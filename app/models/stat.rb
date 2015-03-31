class Stat < ActiveRecord::Base

  # Currently a/b tested versions
  AB_TESTED_STATS = [
    'Paypal button clicked'
  ]

  AB_TESTED_GROUPS = []

  # Active versions
  ACTIVE_VERSIONS = [:a, :b, :c, :d, :e]

  # Check if a given stat or group is being a/b tested
  def self.ab_tested?(stat_name, group)
    AB_TESTED_STATS.include?(stat_name) || AB_TESTED_GROUPS.include?(group)
  end

  def self.active_versions
    ACTIVE_VERSIONS
  end

  def self.full_report
    total_suggestions = Suggestion.all.size
    total_scenarios = Scenario.all.size
    total_donators = Donator.all.size
    total_donated = Donator.total_donated
    top_donator = Donator.all.order("amount DESC").first

    puts "\n\n"

    # Pull the information from other models to display
    puts "Total suggestions: #{total_suggestions}\n"
    puts "Total scenarios: #{total_scenarios}\n"
    puts "Total donators: #{total_donators}\n"
    puts "Total donated: #{total_donated}\n"
    puts "Top donator: #{top_donator.name} | £#{top_donator.amount} | #{top_donator.email}\n"

    puts "\n\n"
    # First we group the stats by group name. This allows us to nicely separate them.
    self.all.group_by(&:group).each do |group, stats|
      # Output the title and underline it
      puts "#{group}"
      puts "-" * group.length

      # Secondly we group them by name. This allows us to check if that stat or group is being a/b tested.
      # If it is then we output each version of the stat separately with it's version name and count.
      # If it isn't then we add up all the versions and display them as one stat.
      stats.group_by(&:name).each do |name, stats|
        if self.ab_tested?(name, stats.first.group)
          stats.each do |stat|
            puts "#{stat.name} | #{stat.version || '-'} | #{stat.count}"
          end
        else
          total_across_versions = stats.map{ |stat| stat.count }.inject(:+)
          puts "#{stats.first.name} | #{total_across_versions}"
        end
      end
      puts "\n\n"
    end

    return nil
  end

  # Create or update a stat.
  # Accepted options:
  #   name
  #   count
  #   group_name
  #   version
  #
  # They are all mandatory, I'm using opts because it makes calling this function more readable.
  def self.adjust_stat(opts = {})
    stat = Stat.find_by(name: opts[:name], version: opts[:version]) || Stat.new(name: opts[:name], count: 0, group: opts[:group], version: opts[:version])

    stat.group = opts[:group]
    stat.count += opts[:count]
    stat.save
  end
end
