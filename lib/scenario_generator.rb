module ScenarioGenerator
  
  class << self

    def scenario game
      @scenario = {}
      GAMES[game][:columns].each do |column_name, options|
        add_column(column_name, options)
      end

      return @scenario
    end

    def sub_scenario game, column
      @scenario = {}
      game = game.to_sym
      wanted_column = column.to_sym

      GAMES[game][:columns].each do |column_name, options|
        @column_name, @options = find_column(wanted_column, column_name, options)
        if @column_name == wanted_column
          add_column @column_name, @options
          
          return @scenario, @options[:sub_trees]
        end
      end
    end

    def find_column wanted_column, column_name, options
      if column_name == wanted_column
        return column_name, options
      elsif options[:title] && options[:title].downcase.to_sym == wanted_column
        return options[:title].downcase.to_sym, options
      else
        options[:options].each do |option|
          if option.class == Hash
            returned_column_name, returned_options = find_column wanted_column, option.keys[0], option[option.keys[0]]
            if returned_column_name == wanted_column
              return returned_column_name, returned_options
            end
          end
        end
      end
    end

    # Recursive algorithm to sample options from a column and then if they themselves have columns
    # add a column and sample options from that column
    def add_column column_name, options
      # Create the title for the column being added
      # A column can specify the name to appear under the :title key
      # If it doesn't then just titleize the key
      title = options[:title] || column_name.to_s.titleize

      # Instantiate the array that'll hold the column's options
      @scenario[title] = []

      # Sample the column options array for the needed quantity of options
      quantity = quantity(options[:chance_of_multiple], options[:max])
      chosen_options = options[:options].sample(quantity)

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
        @scenario[title].append(column_name_titleized)
      end

    end

    def games
      games = {}
      GAMES.each do |key, value|
        games[key] = value[:title]
      end

      if ENV['shuffle_sidebar']
        return games.sort {|a, b| rand <=> rand }
      else
        return games
      end
    end

    def game_display_name game
      GAMES[game][:title]
    end

    def game_background game
      GAMES[game][:background]
    end

    def spoiler game
      GAMES[game][:spoiler]
    end

    def quantity chance, max
      quantity = 1

      while rand(100) < chance && quantity < max
        quantity += 1
      end

      return quantity
    end

  end

end