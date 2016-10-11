get '/' do
  @card = Card.find(random_id)
  erb :'index'
end


