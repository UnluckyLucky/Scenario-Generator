class RemoveVersionFromSuggestions < ActiveRecord::Migration
  def change
    remove_column :suggestions, :version_id
  end
end
