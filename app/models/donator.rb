class Donator < ActiveRecord::Base

  UK_STRING = 'United Kingdom'

  def self.visible
    where(visible: true)
  end

  def self.from_this_month
    self.where(:created_at => Time.now.beginning_of_month..Time.now.end_of_month)
  end

  def self.total_donated
    self.all.map { |donator| donator.amount }.inject(:+)
  end

  def self.total_for_this_month(country)
    total = self.from_this_month.total_donated

    unless in_uk?(country)
      total = Monetize.parse("GBP #{total}").exchange_to("USD")
    end

    return total
  end

  def self.percentage_towards_goal(country)
    total = self.total_for_this_month(country).to_f
    goal = self.get_donation_goal(country).to_i

    total / goal
  end

  def self.last_visible
    self.where(visible: true).last
  end

  def visible_name
    if visible
      self.name
    else
      'Anonymous'
    end
  end

  def self.get_donation_goal(country)
    if in_uk?(country)
      result = ENV['DONATION_GOAL_UK']
    else
      result = ENV['DONATION_GOAL_US']
    end

    unless result
      result = 100
    end

    return result
  end

  def self.get_currency_symbol(country)
    if in_uk?(country)
      '£'
    else
      '$'
    end
  end

  def self.in_uk?(country)
    country == UK_STRING
  end

  def self.latest_donator_name
    Donator.where(title: 'Donator').last.visible_name
  end

end
