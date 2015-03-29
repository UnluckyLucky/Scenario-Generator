class Donator < ActiveRecord::Base

  def self.visible
    where(visible: true)
  end

  def self.from_this_month
    self.where(:created_at => Time.now.beginning_of_month..Time.now.end_of_month)
  end

  def self.total_for_this_month(country)
    total = self.from_this_month.map { |donator| donator.amount }.inject(:+)

    if true
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
    if country == 'UK'
      ENV['DONATION_GOAL_UK']
    else
      ENV['DONATION_GOAL_US']
    end
  end

  def self.get_currency_symbol(country)
    if country == 'UK'
      '£'
    else
      '$'
    end
  end

end
