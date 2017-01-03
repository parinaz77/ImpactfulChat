helpers do
  def current_user
    @current_user ||= Chatroom.find(session[:id]) if session[:id]
  end
end