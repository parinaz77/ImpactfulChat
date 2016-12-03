class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.string :room_name
      t.integer :key
      t.text :users

      t.timestamps
    end
  end
end
