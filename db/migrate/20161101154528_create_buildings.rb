class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :building_name, index: { unique: true }
      t.text :address, null: false, index: { unique: true }
      t.integer :total_units
      t.integer :current_mortgage
      t.integer :current_insurance
      t.integer :current_taxes

      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
