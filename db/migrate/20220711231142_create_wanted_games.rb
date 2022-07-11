class CreateWantedGames < ActiveRecord::Migration[7.0]
  def change
    create_table :wanted_games do |t|
      t.date :wishlisted
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
