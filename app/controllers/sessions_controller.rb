get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.password == params[:user][:password]
    login(@user)

    redirect "/users/#{@user.id}"
  else
    @errors = ["Username or password don't match."]
    erb :'sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
