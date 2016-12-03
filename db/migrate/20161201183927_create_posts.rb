class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body, null: false
      t.integer :chatroom_id

    end

  end
end
