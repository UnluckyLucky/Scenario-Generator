class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :scenario_hash
      t.string :game
      t.string :uuid

      t.timestamps null: false
    end
  end
end
