class Stat < ActiveRecord::Base

  # Currently a/b tested versions
  AB_TESTED_STATS = [
    'Paypal button clicked'
  ]

  AB_TESTED_GROUPS = []

  # Active versions
  ACTIVE_VERSIONS = [:b, :d]

  # Check if a given stat or group is being a/b tested
  def self.ab_tested?(stat_name, group)
    AB_TESTED_STATS.include?(stat_name) || AB_TESTED_GROUPS.include?(group)
  end

  def self.active_versions
    ACTIVE_VERSIONS
  end

  # TODO: Split this up into multiple functions
  def self.report
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
    self.all.group_by(&:group).each do |group, stats_grouped_by_group|
      # Output the title and underline it
      puts "#{group}"
      puts "-" * 35

      ab_tested_output = []
      regular_output = []

      # Sort the stats into descending order
      stats_grouped_by_group = stats_grouped_by_group.sort_by(&:count).reverse

      # Secondly we group them by name. This allows us to check if that stat or group is being a/b tested.
      # If it is then we output each version of the stat separately with it's version name and count.
      # If it isn't then we add up all the versions and display them as one stat.
      #
      # We don't output here, we just push into the output buffer.
      # This is so we can properly sort it, taking into account the non-a/b tested stats
      stats_grouped_by_group.group_by(&:name).each do |name, stats_grouped_by_name|
        if self.ab_tested?(name, stats_grouped_by_name.first.group)

          # Sort the stats into descending order
          stats_grouped_by_name = stats_grouped_by_name.sort_by(&:count).reverse

          # Iterate through each version of this stat and push it to the a/b tested output buffer.
          stats_grouped_by_name.each_with_index do |stat, i|
            ab_tested_output.push({ count: stat.count,
                                    name: stat.name,
                                    version: stat.version || '-',
                                    last: i == stats_grouped_by_name.length - 1})
          end
        else
          # Sum all the versions of this stat
          total_across_versions = stats_grouped_by_name.map{ |stat| stat.count }.inject(:+)
          # Push those values to the non-a/b tested buffer
          regular_output.push({ count: total_across_versions, name: stats_grouped_by_name.first.name })
        end
      end

      ab_tested_output.each do |stat|
        puts "#{"%6d" % stat[:count]} | #{stat[:name]} | #{stat[:version]}"
        if stat[:last]
          puts "\n"
        end
      end

      regular_output.sort_by{ |output| output[:count] }.reverse.each do |stat|
        puts "#{"%6d" % stat[:count]} | #{stat[:name]}"
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
