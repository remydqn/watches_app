class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.string :brand
      t.integer :price
      t.string :location
      t.string :style
      t.string :gender
      t.string :color
      t.string :material
      t.string :name
      t.string :image
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
