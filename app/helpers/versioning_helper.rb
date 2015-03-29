module VersioningHelper

  def version_choice(options = {})
    return options[current_version] if options[current_version]
    options[:default]
  end

  def current_version
    session[:version]
  end

  def random_testing_version
    testing_versions.sample.to_sym
  end

  def testing_versions
    Stat.active_versions
  end

end
