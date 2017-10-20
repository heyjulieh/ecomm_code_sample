class AddCityaddressToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :city_address, :string
  end
end
