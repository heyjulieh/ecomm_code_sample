class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :brand
      t.integer :release_year
      t.string :colorway
      t.text :description
      t.string :condition
      t.string :new_or_used
      t.string :category
      t.integer :quantity
      t.float :price
      t.text :images
      t.text :tags

      t.timestamps
    end
  end
end
