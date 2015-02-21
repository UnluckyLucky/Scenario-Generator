class ApplicationController < ActionController::Base
  include VersioningHelper

  protect_from_forgery with: :exception

  before_action :set_testing_version

  def set_testing_version
    unless testing_versions.include? current_version
      session[:version] = random_testing_version
      version_model = current_version_model
      version_model.count += 1
      version_model.save
    end
  end

end
