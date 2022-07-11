class CreateOwnedGames < ActiveRecord::Migration[7.0]
  def change
    create_table :owned_games do |t|
      t.date :purchased
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
