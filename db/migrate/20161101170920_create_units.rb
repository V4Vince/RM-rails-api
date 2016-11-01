class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.boolean :vacant, :default => true

      t.references :building, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
