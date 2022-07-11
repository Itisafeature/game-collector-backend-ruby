API_KEY = Rails.application.credentials.giant_bomb.api_key

GamePlatform.destroy_all
Game.destroy_all
Platform.destroy_all

offset = 0
count = 0

while count < 20 
  response = HTTParty.get("https://www.giantbomb.com/api/games/?format=json&api_key=#{API_KEY}")
  response["results"].each do |game|
    new_game = Game.create(
      name: game["name"],
      summary: game["deck"],
      description: game["description"],
      release_date: game["original_release_date"],
      small_image: game["image"]["small_url"],
      normal_image: game["image"]["original_url"],
    )

    game["platforms"].each do |platform|
      new_game.platforms << Platform.find_or_create_by(name: platform["name"])
    end
  end

  offset += 100
  count += 1
end
