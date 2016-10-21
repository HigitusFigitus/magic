get '/cards' do
  @card = Card.find(random_id)
  session[:card_id] = @card.id
  # Got no method error which disappered after clearing browser cookies
  # Need to add a check to handle this case
  if logged_in?
    current_user.score += 1
    current_user.save
  end

  if request.xhr?
    erb :'_image_partial', layout: false
  else
    erb :'index'
  end
end
