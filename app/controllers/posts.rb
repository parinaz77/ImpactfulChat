get "/posts" do
  @posts = Post.all
  erb :'posts/index'
end

get "/posts/new" do
  p params
  @post = Post.new
  erb :'posts/new'
end

post "/posts" do
  @post = Post.new(body: params[:body], chatroom_id: params[:chatroom_id], user_hash: session[:user])
  if @post.save
    if request.xhr?
      chatroom = Chatroom.find(params[:chatroom_id])
      erb :'posts/_post', layout: false, locals:{post: @post, chatroom: chatroom }
      # @post.body
    else
      redirect "posts/#{@post.id}"
    end
  else
    status 422
  end
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

