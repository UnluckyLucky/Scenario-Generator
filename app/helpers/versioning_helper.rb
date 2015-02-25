module VersioningHelper

  def version_choice(options = {})
    return options[current_version] if options[current_version]
    options[:default]
  end

  def current_version_model
    Version.find_by(code: current_version) || Version.create(code: current_version)
  end

  def current_version
    session[:version]
  end

  def random_testing_version
    testing_versions.sample.to_sym
  end

  def testing_versions
    [:c, :f, :g, :h]
  end

end
