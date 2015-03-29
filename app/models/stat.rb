class Stat < ActiveRecord::Base

  def self.active_versions
    [:a, :b, :c, :d]
  end

  def self.full_report
    total_suggestions = Suggestion.all.size
    total_scenarios = Scenario.all.size
    total_donators = Donator.all.size
    total_donated = Donator.total_donated
    top_donator = Donator.all.order("amount DESC").first

    puts "\n\n"

    puts "Total suggestions: #{total_suggestions}\n"
    puts "Total scenarios: #{total_scenarios}\n"
    puts "Total donators: #{total_donators}\n"
    puts "Total donated: #{total_donated}\n"
    puts "Top donator: #{top_donator.name} | £#{top_donator.amount} | #{top_donator.email}\n"

    puts "\n\n"
    self.all.group_by(&:group).each do |group, stats|
      puts "Group: #{group}"
      stats.each do |stat|
        puts "#{stat.name} | #{stat.count}"
      end
      puts "\n\n"
    end

    return nil
  end

  def self.adjust_stat(opts = {})
    stat = Stat.find_by(name: opts[:name]) || Stat.new(name: opts[:name], count: 0, group: opts[:group])

    stat.group = opts[:group]
    stat.count += opts[:count]
    stat.save
  end
end
