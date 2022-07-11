class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :summary
      t.string :description
      t.date :release_date
      t.string :small_image
      t.string :normal_image

      t.timestamps
    end
  end
end
