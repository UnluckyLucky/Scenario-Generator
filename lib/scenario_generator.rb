module ScenarioGenerator
  
  class << self

    def scenario game
      scenario = {}
      GAMES[game][:columns].each do |key, value|
        title = value[:title] || key.to_s.titleize
        scenario[title] = value[:options].sample quantity(value[:chance_of_multiple], value[:max])
      end

      return scenario
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
      game = GAMES[game]
      game[:title]
    end

    def game_background game
      game = GAMES[game]
      game[:background]
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