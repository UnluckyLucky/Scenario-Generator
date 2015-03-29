class AddGroupToStats < ActiveRecord::Migration
  def change
    add_column :stats, :group, :string
  end
end
