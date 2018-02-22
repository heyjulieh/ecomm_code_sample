class CreateFalse < ActiveRecord::Migration[5.1]

  def self.up
    create_table :false do |t|
      
        t.text :class_name
      
        t.text :status
      
        t.text :message
      
        t.text :trace
      
        t.text :target
      
        t.text :referrer
      
        t.text :params
      
        t.text :user_agent
      
      t.timestamps
    end
  end

  def self.down
    drop_table :false
  end

end
