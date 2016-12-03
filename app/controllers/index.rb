get '/' do
  unless session[:user]
    session[:user]=SecureRandom.urlsafe_base64
  end
  erb :index
end

get '/map' do
  erb :'/map/show'
end
