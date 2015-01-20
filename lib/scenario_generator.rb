module ScenarioGenerator
  
  class << self

    def scenario game
      scenario = {}
      GAMES[game].each do |key, value|
        scenario[key] = value[:options].sample quantity(value[:chance_of_multiple])
      end

      return scenario
    end

    def games
      GAMES.keys
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