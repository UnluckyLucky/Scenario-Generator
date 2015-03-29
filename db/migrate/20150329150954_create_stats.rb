class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :name
      t.integer :count

      t.timestamps null: false
    end
  end
end
