class DonatorController < ApplicationController

  def index
    @title = 'Scenario Generator Donators'
    @donators = Donator.visible
  end

end
