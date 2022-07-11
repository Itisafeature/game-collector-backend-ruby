class GamePlatform < ApplicationRecord
  belongs_to :game, dependent: :destroy
  belongs_to :platform
end
