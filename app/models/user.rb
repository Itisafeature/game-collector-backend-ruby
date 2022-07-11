class User < ApplicationRecord
  has_many :owned_games
  has_many :wanted_games
  has_many :collected_games, through: :owned_games, source: 'game'
  has_many :wishlisted_games, through: :wanted_games, source: 'game'

  validates :username, presence: true, length: 5..15, uniqueness: true
  validates :email, presence: true, uniqueness: true,
    format: {with: URI::MailTo::EMAIL_REGEXP, message: "Please provide a valid email"}
  
  has_secure_password
end
