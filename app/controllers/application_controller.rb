class ApplicationController < ActionController::Base
  include VersioningHelper

  protect_from_forgery with: :exception

  before_action :set_testing_version
  before_action :load_games
  before_action :setup_donation_bar_info

  def set_testing_version
    unless testing_versions.include? current_version
      session[:version] = random_testing_version
      version_model = current_version_model
      version_model.count += 1
      version_model.save
    end
  end

  private

    def load_games
      @games = ScenarioGenerator.games
    end

    def setup_donation_bar_info
      @location = Geocoder.search(request.remote_ip).first
      @country = @location.country
      @donation_goal = Donator.get_donation_goal(@country)
      @monthly_total = Donator.total_for_this_month(@country)
      @percentage_towards_goal = Donator.percentage_towards_goal(@country)
      @currency_symbol = Donator.get_currency_symbol(@country)
    end

end
