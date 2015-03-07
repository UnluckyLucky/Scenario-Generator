class Alert < ActiveRecord::Base

  LIST_ID = '84922e73b0'

  belongs_to :version

  validates :email, :email => true

  validates_presence_of :email, :message => "required"
  validates_uniqueness_of :email, :message => "already subscribed"

  after_create :mailchimp_subscribe
  before_destroy :mailchimp_unsubscribe

  def self.all_emails
    all.map { |alert| alert.email }
  end

  def list
    gb = Gibbon::API.new
    list = gb.lists.members({:id => LIST_ID})
    list['data'].each do |subscriber|
      puts "#{subscriber.id} | subscriber.email"
    end
  end
  
  def self.signups_by_page
    counts = Hash.new(0)

    all.each do |alert|
      counts[alert.signup_page] += 1
    end

    return counts
  end

  def mailchimp_subscribe
    begin
      gb = Gibbon::API.new
      gb.lists.subscribe({:id => LIST_ID, :email => {:email => self.email}, :double_optin => false})
    rescue
    end
  end

  def mailchimp_unsubscribe
    begin
      gb = Gibbon::API.new
      gb.lists.unsubscribe(:id => LIST_ID, :email => {:email => self.email}, :delete_member => true, :send_notify => true)
    rescue
    end
  end

end