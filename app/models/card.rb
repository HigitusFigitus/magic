class Card < ActiveRecord::Base
  validates :image_url, presence: true
  validates :multiverse_id, presence: true
end
