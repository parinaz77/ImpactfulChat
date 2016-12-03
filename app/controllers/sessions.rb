get '/sessions/login' do
  erb :'/sessions/new'
end

post '/sessions'do
  @chatroom = Chatroom.authenticate(params[:room_name], params[:key])
  p session[:user]
  if @chatroom
    if @chatroom.users[session[:user]] == nil
      @chatroom.users[session[:user]]=["red","blue","purple","orange","yellow","green"].sample
      @chatroom.save
    end

    session[:id] = @chatroom.id
    redirect "/users/#{@chatroom.id}"
  else
    @error = "Room name or key is not correct"
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  session[:id] = nil
  redirect '/'
end

get '/session-viewer' do
  p session
end