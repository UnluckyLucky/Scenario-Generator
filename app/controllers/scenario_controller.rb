class ScenarioController < ApplicationController
  include ScenarioGenerator

  layout 'index', only: [:index]

  before_action :load_games

  def index
  end

  def show
    @game_name = params[:game].to_sym
    if ScenarioGenerator.games.include? @game_name
      @scenario = ScenarioGenerator.scenario @game_name

      @title = ScenarioGenerator.game_display_name @game_name
      @background = ScenarioGenerator.game_background @game_name

      unless session[@game_name]
        @spoiler_alert_display = ScenarioGenerator.spoiler @game_name
      end

    else
      redirect_to root_path
    end
  end

  def reroll_column
    @game_name = params[:game_name].gsub(/#/,"").to_sym
    if ScenarioGenerator.games.include? @game_name
      @sub_scenario, @sub_trees_to_remove = ScenarioGenerator.sub_scenario @game_name, params[:column_name].downcase.tr(" ", "_")
      @scenario = construct_hash_from_params

      @title = ScenarioGenerator.game_display_name @game_name
      @background = ScenarioGenerator.game_background @game_name

      unless session[@game_name]
        @spoiler_alert_display = ScenarioGenerator.spoiler @game_name
      end

      render :show
    else
      redirect_to root_path
    end
  end

  def accept
    @game_name = params[:game].to_sym
    session[@game_name] = true
    redirect_to generator_path(game: @game_name)
  end

  private

    def load_games
      @games = ScenarioGenerator.games
    end

    def construct_hash_from_params
      cleared_hash = {}
      params[:existing_data].each do |param_key, param_value|
        unless @sub_trees_to_remove && @sub_trees_to_remove.include?(param_key.to_sym)
          cleared_hash[param_key.titleize] = param_value
        end
      end

      returned_hash = {}

      cleared_hash.each do |cleared_key, cleared_value|
        if cleared_key.to_sym == @sub_scenario.keys[0].to_sym
          @sub_scenario.each do |sub_key, sub_value|
            returned_hash[sub_key.titleize] = sub_value
          end
        else
          returned_hash[cleared_key.titleize] = cleared_value
        end
      end

      return returned_hash
    end

end
