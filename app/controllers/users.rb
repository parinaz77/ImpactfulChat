
get '/users' do
  @chatrooms = Chatroom.all
  erb :'/users/index'
end

get '/users/new' do
  p "-"*30
  p session[:user]
  @key = 5.times.map{rand(10)}.join
  erb :'/users/new'
end

post '/users' do
  @chatroom = Chatroom.new(params[:chatroom])
  if @chatroom.save
    redirect '/sessions/login'
  else
    @errors = @chatroom.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  @posts = Post.all
  @chatroom = Chatroom.find(params[:id])
  p @chatroom
  # @user_class= @chatroom.users[session[:user]]
  erb :'/users/show'
end