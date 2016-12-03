helpers do
  def get_color(post, chatroom)
    id = post.user_hash
    chatroom.users[id]
  end
end