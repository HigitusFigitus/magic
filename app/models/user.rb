require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :scores
  has_many :favorites
  has_many :cards, through: :favorites

  validates :username, :email, :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
