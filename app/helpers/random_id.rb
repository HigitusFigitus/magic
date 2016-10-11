helpers do
  def card_quantity
    Card.last.id
  end

  def random_id
    rand(1..card_quantity)
  end
end


