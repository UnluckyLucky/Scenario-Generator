class Alert < ActiveRecord::Base

  validates :email, :email => true

  validates_presence_of :email, :message => "required"
  validates_uniqueness_of :email, :message => "already subscribed"

  def self.email_list
    all.map { |alert| alert.email }
  end

end
