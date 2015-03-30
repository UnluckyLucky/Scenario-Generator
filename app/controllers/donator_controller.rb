class DonatorController < ApplicationController

  def index
    @title = 'Scenario Generator Donators'
    @donators = Donator.visible
    Stat.adjust_stat(name: "Donator page visitors", count: 1, group: 'Visitor Counts', version: current_version)
  end

end
