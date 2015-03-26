class Donator < ActiveRecord::Base

  def self.visible
    where(visible: true)
  end

  def self.from_this_month
    self.where(:created_at => Time.now.beginning_of_month..Time.now.end_of_month)
  end

  def self.total_for_this_month
    self.from_this_month.map { |donator| donator.amount }.inject(:+)
  end

  def self.percentage_towards_goal
    total = self.total_for_this_month.to_f
    goal = ENV['DONATION_GOAL'].to_i

    total / goal
  end

  def self.last_visible
    self.where(visible: true).last
  end

end
