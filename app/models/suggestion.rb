class Suggestion < ActiveRecord::Base

  belongs_to :version

  validates :suggestion, presence: true

  def self.suggestions
    all.each do |suggestion|
      puts suggestion.suggestion
    end
  end

  def self.signups_by_page
    counts = Hash.new(0)

    all.each do |suggestion|
      counts[suggestion.signup_page] += 1
    end

    return counts
  end

end
