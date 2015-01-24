class ScenarioController < ApplicationController
  include ScenarioGenerator

  layout 'index', only: [:index]

  before_action :load_games

  def index
  end

  def show
    if ScenarioGenerator.games.include? params[:game].to_sym
      @scenario = ScenarioGenerator.scenario params[:game].to_sym
      @title = ScenarioGenerator.game_display_name params[:game].to_sym
      @background = ScenarioGenerator.game_background params[:game].to_sym
    else
      redirect_to root_path
    end
  end

  private

    def load_games
      @games = ScenarioGenerator.games
    end

end
