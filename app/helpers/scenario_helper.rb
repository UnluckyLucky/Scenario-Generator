module ScenarioHelper

  # Columns appear in different formats throughout constants and as input from the api.
  # This converts them all into spaced, downcased symbols for comparison
  def standard_column_name column_name
    column_name.to_s.gsub(/ /, '_').downcase.to_sym
  end

  def column_width_string column_type_key
    case @scenario[column_type_key].keys.size
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

  def column_width_row_divisor column_type_key
    case @scenario[column_type_key].keys.size
    when 1
      1
    when 2
      1
    when 3
      3
    else
      3
    end
  end

  def column_width_row_remainder column_type_key
    case @scenario[column_type_key].keys.size
    when 1
      0
    when 2
      1
    when 3
      2
    else
      3
    end
  end

end
