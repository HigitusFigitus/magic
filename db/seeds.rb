require 'mtg_sdk'

# Get all Cards
puts "Retrieving cards: this will take about 5 minutes."
cards = MTG::Card.all

puts "Storing cards in database..."
cards.each do |card|
  Card.create(multiverse_id: card.multiverse_id, image_url: card.image_url)
end