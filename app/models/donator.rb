class Donator < ActiveRecord::Base

  def self.visible
    where(visible: true)
  end

end
