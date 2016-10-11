get '/' do
  @card = Card.find(random_id)
  if request.xhr?
    erb :'_image_partial', layout: false
  else
    erb :'index'
  end
end
