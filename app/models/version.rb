class Version < ActiveRecord::Base

  has_many :alerts

  def self.test_outcome
    conversion_counts = Hash.new(0.0)

    all.each do |version|
      if version.code == nil
        next
      end

      conversion_counts[version.code] = {}
      conversion_counts[version.code][:rate] = version.alerts.size.to_f / version.count.to_f
      conversion_counts[version.code][:conversions] = version.alerts.size
      conversion_counts[version.code][:count] = version.count
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
    test_outcome.each do |version, conversion_info|
      puts "#{version} | Conversion Rate: #{"%6.2f" % (conversion_info[:rate] * 100)}% | Conversions: #{"%5d" % conversion_info[:conversions]} | Count: #{"%5d" % conversion_info[:count]} \n"
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
