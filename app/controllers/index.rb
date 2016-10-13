get '/' do
  @card = Card.find(random_id)
  if request.xhr?
    erb :'_image_partial', layout: false
  else
    erb :'index'
  end
end

get '/users/new' do
  erb :'users/new'
end

get '/sessions/new' do
  erb :'sessions/new'
end
