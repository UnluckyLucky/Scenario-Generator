class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :suggestion
      t.integer :version_id
      t.string :signup_page

      t.timestamps null: false
    end
  end
end
