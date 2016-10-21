get '/users' do
  @users = User.all.order('score desc').limit(10)
  erb :'users/index'
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  if params[:password_confirmation] == params[:user][:password]

    @user = User.new(
      username: params[:user][:username],
      email: params[:user][:email],
      password: params[:user][:password],
      score: 0
      )

    if @user.save
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

post "/users/:current_user_id/favorites" do
  @favorite = Favorite.create(
    user_id: params[:current_user_id],
    card_id: current_card.id
    )

  if @favorite.save
    redirect "/"
  end
end