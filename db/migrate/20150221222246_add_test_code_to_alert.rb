class AddTestCodeToAlert < ActiveRecord::Migration
  def change
    add_column :alerts, :version_id, :string
  end
end
