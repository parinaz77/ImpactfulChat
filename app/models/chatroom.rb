class Chatroom < ActiveRecord::Base
  validates :room_name, presence: true
  validates :key, uniqueness: true
  serialize :users, Hash

  has_many :posts


  def self.authenticate(room_name, key)
    @chatroom = Chatroom.find_by(room_name: room_name)
    if @chatroom && @chatroom.key == key.to_i
      @chatroom
    else
      nil
    end
  end
end
