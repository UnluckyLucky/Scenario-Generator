class AddSignupGameToAlerts < ActiveRecord::Migration
  def change
    add_column :alerts, :signup_page, :string
  end
end
