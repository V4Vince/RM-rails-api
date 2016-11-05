class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.float :footage
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :parking
      t.integer :livingroom
      t.integer :kitchen
      t.integer :diningroom

      t.references :infoable, polymorphic: true, index: true, null: false

      t.timestamps null: false
    end
  end
end
