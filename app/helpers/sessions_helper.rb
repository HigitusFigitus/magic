helpers do
  def login(user)
    session[:user_id] = @user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if User.exists?(session[:user_id])
  end

  def logged_in?
    current_user ? true : false
  end

  def logout
    session[:user_id] = nil
  end
end
