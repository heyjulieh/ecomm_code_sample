class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.text :images
      t.text :tags
      t.string :category

      t.timestamps
    end
  end
end
