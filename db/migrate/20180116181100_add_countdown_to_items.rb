class AddCountdownToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :countdown, :integer
  end
end
