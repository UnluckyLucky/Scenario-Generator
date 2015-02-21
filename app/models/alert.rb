class Alert < ActiveRecord::Base

  belongs_to :version

  validates :email, :email => true

  validates_presence_of :email, :message => "required"
  validates_uniqueness_of :email, :message => "already subscribed"

  def self.all_emails
    all.map { |alert| alert.email }
  end

  def self.email_list
    string = ""

    all.each do |alert|
      string += "#{alert.email}, "
    end

    return string[0..-3]
  end

  def self.signups_by_page
    counts = Hash.new(0)

    all.each do |alert|
      counts[alert.signup_page] += 1
    end

    return counts
  end

end
