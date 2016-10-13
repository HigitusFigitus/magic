class Card < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites

  validates :image_url, presence: true
  validates :multiverse_id, presence: true
end
