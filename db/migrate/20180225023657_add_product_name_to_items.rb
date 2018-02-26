class AddProductNameToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :product_name, :string
  end
end
