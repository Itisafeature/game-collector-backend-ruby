class CreateGamePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :game_platforms do |t|
      t.integer :game_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
