get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by_email(params[:email])

  if @user && @user.password == params[:password]
    login(@user)
    redirect '/'
  else
    @errors = ["Username or password don't match."]
    erb :'sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end