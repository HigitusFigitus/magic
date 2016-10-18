get '/cards' do
  @card = Card.find(random_id)

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
