class CreateGamePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :game_platforms do |t|
      t.string :game_id
      t.string :platform_id

      t.timestamps
    end
  end
end
