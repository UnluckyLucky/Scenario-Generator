class AddVersionToStat < ActiveRecord::Migration
  def change
    add_column :stats, :version, :string
  end
end
