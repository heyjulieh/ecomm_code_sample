class AddFitToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :fit, :string
  end
end
