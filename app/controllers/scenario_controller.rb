class ScenarioController < ApplicationController
  include ScenarioGenerator
  include ScenarioHelper

  layout 'generator', only: [:show, :reroll_column, :load]

  REGULAR_SYMBOL = :r
  SPOILER_SYMBOL = :s

  def index
    @title = 'Scenario Generator'
  end

  def show
    @game_name = params[:game_name].to_sym
    if ScenarioGenerator.games.include? @game_name
      @scenario = ScenarioGenerator.scenario @game_name

      set_up_variables
    else
      redirect_to root_path
    end
  end

  def reroll_column
    @game_name = params[:game_name].gsub(/#/,"").to_sym
    if ScenarioGenerator.games.include? @game_name
      @sub_scenario, @sub_trees_to_remove = ScenarioGenerator.sub_scenario @game_name, standard_column_name(params[:column_name])
      @scenario = construct_hash_from_params

      set_up_variables
    else
      redirect_to root_path
    end
  end

  def accept
    @game_name = params[:game_name].to_sym
    session[@game_name] = true
    redirect_to generator_path(game_name: @game_name)
  end

  def save
    @game_name = params[:game_name].gsub(/#/,"").to_sym
    @scenario = Scenario.find_by(uuid: params[:uuid], game: params[:game_name]) || 
                Scenario.new(game: @game_name)

    @scenario.scenario_hash = construct_hash_from_params
    @scenario.save

    respond_to do |format|
      format.js
    end
  end

  def load
    @game_name = params[:game_name].gsub(/#/,"").to_sym
    @saved_scenario = Scenario.find_by(uuid: params[:uuid], game: params[:game_name])

    if @saved_scenario
      @scenario = @saved_scenario.scenario_hash

      set_up_variables
    else
      redirect_to generator_path(game_name: params[:game_name])
    end
  end

  private

    def set_up_variables
      @game_name_title = ScenarioGenerator.game_display_name @game_name
      @generator_title = ScenarioGenerator.generator_title @game_name
      @title = "#{@generator_title} Generator for #{@game_name_title}"
      @background = ScenarioGenerator.game_background @game_name
      @next_title, @next_link = ScenarioGenerator.next_game @game_name
      @previous_title, @previous_link = ScenarioGenerator.previous_game @game_name

      unless session[@game_name]
        @spoiler_alert_display = !@scenario[:spoiler].empty?
      end

      render :show
    end

    # TODO: Clean this up
    def construct_hash_from_params
      cleared_hash = { regular: {}, spoiler: {} }
      if params[REGULAR_SYMBOL] && !params[REGULAR_SYMBOL].empty?
        params[REGULAR_SYMBOL].each do |param_key, param_value|
          unless @sub_trees_to_remove && @sub_trees_to_remove.include?(standard_column_name(param_key))
            cleared_hash[:regular][param_key.titleize] = param_value
          end
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

      @sub_scenario = returned_hash unless @sub_scenario

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
