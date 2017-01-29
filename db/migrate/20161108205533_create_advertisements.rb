class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.date :dateAvailable
      t.text :leaseTerms
      t.integer :current_mortgage
      t.integer :current_insurance
      t.integer :current_taxes



      t.references :unit, index: { unique: true }, foreign_key: true

      t.references :building, index: { unique: true }, foreign_key: true

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
