helpers do
  def card_quantity
    Card.last.id
  end

  def random_id
    rand(1..card_quantity)
  end

  def current_card
    @card ||= Card.find(session[:card_id]) if Card.exists?(session[:card_id])
  end
end
