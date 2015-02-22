class Version < ActiveRecord::Base

  has_many :alerts
  has_many :suggestions

  def self.test_outcome
    conversion_counts = Hash.new(0.0)

    all.each do |version|
      if version.code == nil
        next
      end

      conversion_counts[version.code] = {}
      conversion_counts[version.code][:email_rate] = version.alerts.size.to_f / version.count.to_f
      conversion_counts[version.code][:email_conversions] = version.alerts.size
      conversion_counts[version.code][:suggestion_rate] = version.suggestions.size.to_f / version.count.to_f
      conversion_counts[version.code][:suggestion_conversions] = version.suggestions.size
      conversion_counts[version.code][:count] = version.count
    end

    return Hash[conversion_counts.sort]
  end

  def self.full_report
    total_emails = Alert.all.size
    total_suggestions = Suggestion.all.size
    test_outcome = Version.test_outcome
    emails_by_page = Alert.signups_by_page
    suggestions_by_page = Suggestion.signups_by_page

    puts "\nTotal email signups:\n"
    puts "#{total_emails}\n"

    puts "\nTotal suggestions:\n"
    puts "#{total_suggestions}\n"

    puts "\nA/B testing email outcome:\n"
    test_outcome.each do |version, conversion_info|
      puts "#{version} | Conversion Rate: #{"%6.2f" % (conversion_info[:email_rate] * 100)}% | Conversions: #{"%5d" % conversion_info[:email_conversions]} | Count: #{"%7d" % conversion_info[:count]} \n"
    end

    puts "\nA/B testing suggestion outcome:\n"
    test_outcome.each do |version, conversion_info|
      puts "#{version} | Conversion Rate: #{"%6.2f" % (conversion_info[:suggestion_rate] * 100)}% | Conversions: #{"%5d" % conversion_info[:suggestion_conversions]} | Count: #{"%7d" % conversion_info[:count]} \n"
    end

    puts "\nEmail Signups by page:\n"
    emails_by_page.each do |page, conversion_count|
      next if page == nil
      puts "#{page}: #{conversion_count}\n"
    end

    puts "\nSuggestions by page:\n"
    suggestions_by_page.each do |page, conversion_count|
      next if page == nil
      puts "#{page}: #{conversion_count}\n"
    end

    puts "\n"

    return nil
  end

  def destroy
    alerts.each do |alert|
      alert.version = nil
      alert.save
    end

    suggestions.each do |suggestion|
      suggestion.version = nil
      suggstion.save
    end

    super
  end

end
