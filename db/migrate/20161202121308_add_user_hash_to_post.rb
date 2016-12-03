class AddUserHashToPost < ActiveRecord::Migration
  def change
    add_column(:posts, :user_hash, :string)
  end
end
