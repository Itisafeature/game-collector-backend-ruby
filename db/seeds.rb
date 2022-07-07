API_KEY = Rails.application.credentials.giant_bomb.api_key

response = HTTParty.get("https://www.giantbomb.com/api/games/?format=json&limit=1&api_key=#{API_KEY}")
puts response.parsed_response