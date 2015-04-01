class AddTitleToDonators < ActiveRecord::Migration
  def change
    add_column :donators, :title, :string, default: 'Donator'
  end
end
