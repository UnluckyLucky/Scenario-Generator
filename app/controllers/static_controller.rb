class StaticController < ApplicationController

  def faq
    @title = 'Scenario Generator FAQ'
    Stat.adjust_stat(name: "FAQ visitors", count: 1, group: 'Visitor Counts', version: current_version)
  end

end
