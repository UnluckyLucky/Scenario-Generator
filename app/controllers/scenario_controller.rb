class ScenarioController < ApplicationController
  include ScenarioGenerator

  layout 'index', only: [:index]

  def index
    @games = ScenarioGenerator.games
  end

  def show
    if ScenarioGenerator.games.include? params[:game].to_sym
      @scenario = ScenarioGenerator.scenario params[:game].to_sym
    else
      redirect_to root_path
    end
  end

end
