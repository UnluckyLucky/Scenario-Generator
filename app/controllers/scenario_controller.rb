class ScenarioController < ApplicationController
  include ScenarioGenerator

  def show
    @biome = [ScenarioGenerator.biome]
    @surroundings = [ScenarioGenerator.surroundings]
    @challenges = ScenarioGenerator.challenges
    @goals = ScenarioGenerator.goals
  end

end
