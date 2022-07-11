class Game < ApplicationRecord
  has_many :owned_games
  has_many :wanted_games
  has_many :owners, through: :owned_games, source: 'user'
  has_many :wishlisters, through: :wanted_games, source: 'user'
  has_many :game_platforms
  has_many :platforms, through: :game_platforms

  validates :name, presence: true
end
