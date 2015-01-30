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
      @game_name = params[:game]
    else
      redirect_to root_path
    end
  end

  def reroll_column
    @game_name = params[:game_name].gsub(/#/,"").to_sym
    if ScenarioGenerator.games.include? @game_name
      @sub_scenario, @sub_trees_to_remove = ScenarioGenerator.sub_scenario @game_name, params[:column_name].downcase.tr(" ", "_")
      puts @sub_scenario, @sub_trees_to_remove
      @scenario = construct_hash_from_params

      @title = ScenarioGenerator.game_display_name @game_name
      @background = ScenarioGenerator.game_background @game_name

      render :show
    else
      redirect_to root_path
    end
  end

  private

    def load_games
      @games = ScenarioGenerator.games
    end

    def construct_hash_from_params
      hash = {}
      params[:existing_data].each do |param_key, param_value|
        unless @sub_trees_to_remove && @sub_trees_to_remove.include?(param_key.to_sym)
          hash[param_key.titleize] = param_value
        end
      end

      @sub_scenario.each do |sub_key, sub_value|
        hash[sub_key.titleize] = sub_value
      end

      return hash
    end

end
