module ScenarioHelper

  def column_width_string
    case @scenario.keys.size
    when 1
      'col-sm-6 col-sm-offset-3'
    when 2
      'col-sm-6 col-sm-offset-0'
    when 3
      'col-sm-4 col-sm-offset-0'
    else
      'col-sm-3 col-sm-offset-0'
    end
  end

end
