class CreateDonators < ActiveRecord::Migration
  def change
    create_table :donators do |t|
      t.string :name
      t.string :description
      t.string :link_name
      t.string :link_url
      t.integer :amount
      t.string :email
      t.boolean :visible
      t.string :image_url

      t.timestamps null: false
    end
  end
end
