class ScenarioController < ApplicationController
  include ScenarioGenerator
  include ScenarioHelper

  layout 'generator', only: [:show, :reroll_column]

  before_action :load_games

  REGULAR_SYMBOL = :r
  SPOILER_SYMBOL = :s

  def index
  end

  def show
    @game_name = params[:game].to_sym
    if ScenarioGenerator.games.include? @game_name
      @scenario = ScenarioGenerator.scenario @game_name

      @title = ScenarioGenerator.game_display_name @game_name
      @background = ScenarioGenerator.game_background @game_name
      @next_title, @next_link = ScenarioGenerator.next_game @game_name
      @previous_title, @previous_link = ScenarioGenerator.previous_game @game_name

      unless session[@game_name]
        @spoiler_alert_display = !@scenario[:spoiler].empty?
      end

    else
      redirect_to root_path
    end
  end

  def reroll_column
    @game_name = params[:game_name].gsub(/#/,"").to_sym
    if ScenarioGenerator.games.include? @game_name
      @sub_scenario, @sub_trees_to_remove = ScenarioGenerator.sub_scenario @game_name, standard_column_name(params[:column_name])
      @scenario = construct_hash_from_params

      @title = ScenarioGenerator.game_display_name @game_name
      @background = ScenarioGenerator.game_background @game_name
      @next_title, @next_link = ScenarioGenerator.next_game @game_name
      @previous_title, @previous_link = ScenarioGenerator.previous_game @game_name

      unless session[@game_name]
        @spoiler_alert_display = !@scenario[:spoiler].empty?
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

    # TODO: Clean this up
    def construct_hash_from_params
      cleared_hash = { regular: {}, spoiler: {} }
      params[REGULAR_SYMBOL].each do |param_key, param_value|
        unless @sub_trees_to_remove && @sub_trees_to_remove.include?(standard_column_name(param_key))
          cleared_hash[:regular][param_key.titleize] = param_value
        end
      end

      if params[SPOILER_SYMBOL] && !params[SPOILER_SYMBOL].empty?
        params[SPOILER_SYMBOL].each do |param_key, param_value|
          unless @sub_trees_to_remove && @sub_trees_to_remove.include?(standard_column_name(param_key))
            cleared_hash[:spoiler][param_key.titleize] = param_value
          end
        end
      end

      returned_hash = { regular: {}, spoiler: {} }

      cleared_hash[:regular].each do |cleared_key, cleared_value|
        if !@sub_scenario[:regular].empty? && standard_column_name(cleared_key) == standard_column_name(@sub_scenario[:regular].keys[0])
          @sub_scenario[:regular].each do |sub_key, sub_value|
            returned_hash[:regular][sub_key.titleize] = sub_value
          end
        else
          returned_hash[:regular][cleared_key.titleize] = cleared_value
        end
      end

      cleared_hash[:spoiler].each do |cleared_key, cleared_value|
        if !@sub_scenario[:spoiler].empty? && standard_column_name(cleared_key) == standard_column_name(@sub_scenario[:spoiler].keys[0])
          @sub_scenario[:spoiler].each do |sub_key, sub_value|
            returned_hash[:spoiler][sub_key.titleize] = sub_value
          end
        else
          returned_hash[:spoiler][cleared_key.titleize] = cleared_value
        end
      end

      return returned_hash
    end

end
