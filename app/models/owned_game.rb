class OwnedGame < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :game, dependent: :destroy
end
