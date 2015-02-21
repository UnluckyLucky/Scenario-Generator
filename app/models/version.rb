class Version < ActiveRecord::Base

  has_many :alerts

  def self.test_outcome
    conversion_counts = Hash.new(0.0)

    all.each do |version|
      if version.code == nil
        next
      end

      conversion_counts[version.code] = version.alerts.size.to_f / version.count.to_f
    end

    return conversion_counts 
  end

  def self.full_report
    total_emails = Alert.all.size
    test_outcome = Version.test_outcome
    signups_by_page = Alert.signups_by_page

    puts "\nTotal email signups:\n"
    puts "#{total_emails}\n"

    puts "\nA/B testing outcome:\n"
    test_outcome.each do |version, conversion_rate|
      puts "#{version}: #{conversion_rate * 100}\n"
    end

    puts "\nSignups by page:\n"
    signups_by_page.each do |page, conversion_count|
      next if page == nil
      puts "#{page}: #{conversion_count}\n"
    end

    return nil
  end

  def destroy
    alerts.each do |alert|
      alert.version = nil
      alert.save
    end

    super
  end

end
