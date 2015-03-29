class Suggestion < ActiveRecord::Base

  validates :suggestion, presence: true

  def self.suggestions
    all.each do |suggestion|
      puts suggestion.id
      puts suggestion.suggestion
      puts "\n"
    end

    return nil
  end

  def self.signups_by_page
    counts = Hash.new(0)

    all.each do |suggestion|
      counts[suggestion.signup_page] += 1
    end

    return counts
  end

end
