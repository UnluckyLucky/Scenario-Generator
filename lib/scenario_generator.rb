module ScenarioGenerator

  class << self

    def scenario game
      @scenario = { regular: {}, spoiler: {} }
      GAMES[game][:columns].each do |column_name, options|
        add_column(column_name, options)
      end

      return @scenario
    end

    def sub_scenario game, column
      @scenario = { regular: {}, spoiler: {} }
      game = game.to_sym
      wanted_column = standard_column_name(column)

      GAMES[game][:columns].each do |column_name, options|
        @column_name, @options = find_column(wanted_column, column_name, options)
        if @column_name == wanted_column
          add_column @column_name, @options

          return @scenario, @options[:sub_trees]
        end
      end
    end

    # Find a column hash recursively within a given column
    def find_column wanted_column, column_name, options
      # Check the column's name for a match
      if same_column?(column_name, wanted_column)
        return standard_column_name(column_name), options
      # Check the column's specific title for a match
      elsif options[:title] && same_column?(options[:title], wanted_column)
        return standard_column_name(options[:title]), options
      # Otherwise there is no match, so go down a level and continue the search
      else
        # Iterate through all the options for the given column
        options[:options].each do |option|
          # If it's a hash then it is an option containing at least one sub-column
          if option.class == Hash
            # Since an option with sub-columns can have multiple sub-columns we need to iterate through
            # all of them to do the search.
            option.each do |key, value|
              # Call find_column for each of the sub-columns
              returned_column_name, returned_options = find_column wanted_column, key, value
              # If the returned value matches the wanted_column then pass it up the recursion chain
              if returned_column_name == wanted_column
                return returned_column_name, returned_options
              end
            end
          end
        end
      end

      # No match
      return false, false
    end

    # Columns appear in different formats throughout constants and as input from the api.
    # This converts them all into spaced, downcased symbols for comparison
    def standard_column_name column_name
      column_name.to_s.gsub(/ /, '_').downcase.to_sym
    end

    # Compare two column names and return whether they are the same column
    # Convert both columns to the same format
    def same_column? column_1, column_2
      standard_column_name(column_1) == standard_column_name(column_2)
    end

    # Recursive algorithm to sample options from a column and then if they themselves have columns
    # add a column and sample options from that column
    def add_column column_name, options
      # Create the title for the column being added
      # A column can specify the name to appear under the :title key
      # If it doesn't then just titleize the key
      title = options[:title] || column_name.to_s.titleize

      # Figure out whether this column is a spoiler column or not
      spoiler_symbol = :regular
      spoiler_symbol = :spoiler if options[:spoiler] == true

      # Instantiate the array that'll hold the column's options
      @scenario[spoiler_symbol][title] = []

      # Sample the column options array for the needed quantity of options
      quantity = quantity(options[:chance_of_multiple], options[:max], options[:min])
      if quantity == 0
        chosen_options = [:none]
      else
        chosen_options = options[:options].sample(quantity)
      end

      # Iterate through all the chosen options
      chosen_options.each do |chosen_option|

        # If the option being checked is a hash then it has sub columns that are going to be created.
        if chosen_option.class == Hash
          # Grab the name of the next column
          column_name = chosen_option.keys[0]
          # Create the title for the subcolumn
          # We're going to use that and add it to the current column's option array
          # There is a seperate key to be used when the column is a subcolumn, use that here if available
          column_name_titleized = chosen_option[column_name][:option_title] || column_name.to_s.titleize

          # Then pass the column name and its options to add_column to recursively add the subcolumn
          # and any possible subcolumns it may have
          chosen_option.each do |key, value|
            add_column key, value
          end
        # Otherwise the option being checked is just a symbol
        elsif chosen_option.class == Array
          chosen_option_from_array = chosen_option.sample(1)[0]

          column_name_titleized = chosen_option_from_array.to_s
        else
          # Titlize it
          column_name_titleized = chosen_option.to_s
        end

        # Add the option that we created in one of the two ways above to the current column's options array
        @scenario[spoiler_symbol][title].append(column_name_titleized)
      end

    end

    # Return list of games, by default this is sorted new -> updated -> alphabetical everything else
    def games
      games = {}
      GAMES.each do |key, value|
        unless value[:disabled]
          games[key] = value[:title]
        end
      end

      if ENV['shuffle_sidebar']
        return Hash[games.sort {|a, b| rand <=> rand }]
      else
        sorted_games = games.sort_by do |name, value|
          if new?(name)
            '1'
          elsif updated_recently?(name)
            '2'
          else
            name.to_s
          end
        end
        return Hash[sorted_games]
      end
    end

    # Get next game in series
    # Not currently in use
    def next_game game
      if GAMES[game][:next_game]
        title = GAMES[GAMES[game][:next_game]][:title]
        link = GAMES[game][:next_game]
        return title, link
      end
    end

    # Get previous game in series
    # Not currently in use
    def previous_game game
      if GAMES[game][:previous_game]
        title = GAMES[GAMES[game][:previous_game]][:title]
        link = GAMES[game][:previous_game]
        return title, link
      end
    end

    # Searches the given game for the given column and returns its help message.
    # TODO: Roll this into scenario generation so that the data is passed around in that JSON
    def help_message game, wanted_column
      GAMES[game.to_sym][:columns].each do |column_name, options|
        column_name, options = find_column(wanted_column, column_name, options)
        if column_name == wanted_column
          return options[:help]
        end
      end
    end

    # The human readable name of a game
    def game_display_name game
      GAMES[game][:title]
    end

    def random_game
      GAMES.keys.sample(1)[0]
    end

    # This is what the generater generates. Examples:
    # Pokemon -> Party
    # Mass Effect -> Playthrough
    # Skyrim -> Character
    def generator_title game
      GAMES[game][:generator_title] || "Scenario"
    end

    def game_background game
      GAMES[game][:background]
    end

    def buy_link game, country
      if GAMES[game][:buy_link]
        if country == 'United Kingdom' && GAMES[game][:buy_link][:uk]
          GAMES[game][:buy_link][:uk]
        else
          GAMES[game][:buy_link][:us]
        end
      end
    end

    # A game is new if it was added in the last week
    def new? game
      return true if GAMES[game][:added] && GAMES[game][:added].between?(1.weeks.ago, Date.today)
      return false
    end

    # A game was updated recently if it was updated in the last week, but not added within the last week
    def updated_recently? game
      return true if GAMES[game][:last_updated] && GAMES[game][:last_updated].between?(1.weeks.ago, Date.today) && !new?(game)
      return false
    end

    def quantity chance, max, min
      # Ensure we always have a chance variable. Default = 0
      chance = 0 unless chance
      # Ensure we always have a min variable. Default = 1
      min = 1 unless min
      # Ensure we always have a max variable. Default = min
      max = min unless max
      # If that'd put it below 1 then set it to 1
      max = 1 if max < 1

      quantity = min

      # If chance is 100% then just use max since we'll hit it anyway
      if chance == 100
        return max
      end

      # If chance is 100% then just use max since we'll hit it anyway
      if chance == 0
        return min
      end

      while rand(100) < chance && quantity < max
        quantity += 1
      end

      return quantity
    end

  end

end