class Post < ActiveRecord::Base
  validates_presence_of :body
  belongs_to :chatroom

end

