module ScenarioGenerator
  
  class << self

    def biome
      BIOMES.sample
    end

    def surroundings
      SURROUNDINGS.sample
    end

    def goals
      goals = []

      goals.push GOALS.sample

      while rand(100) > 95
        goals.push GOALS.sample
      end

      return goals
    end

    def challenges
      challenges = []

      challenges.push CHALLENGES.sample

      while rand(100) > 95
        challenges.push CHALLENGES.sample
      end

      return challenges
    end

  end

end