get '/' do
  @card = Card.find(random_id)
  if request.xhr?
    ### not sure about this
    return card.image_url, layout: false
  else
    erb :'index'
  end
end


