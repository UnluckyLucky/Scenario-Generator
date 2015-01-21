module ScenarioGenerator
  
  class << self

    def scenario game
      scenario = {}
      GAMES[game][:columns].each do |key, value|
        scenario[key] = value[:options].sample quantity(value[:chance_of_multiple])
      end

      return scenario
    end

    def games
      games = {}
      GAMES.each do |key, value|
        games[key] = value[:title]
      end
    end

    def game_display_name game
      game = GAMES[game]
      game[:title]
    end

    def quantity chance
      quantity = 1

      while rand(100) < chance
        quantity += 1
      end

      return quantity
    end

  end

end