get '/users/new' do
  erb :'users/new'
end

post '/users' do
  if params[:password_confirmation] == params[:user][:password]

    @user = User.new(params[:user])

    if @user.save!
      login(@user)
      redirect "/users/#{@user.id}"
    else
      @errors = @user.errors.full_messages
      erb :'users/new'
    end

  else
    @errors = ["Email or password don't match."]
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end