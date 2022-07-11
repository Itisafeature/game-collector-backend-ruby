class Api::V1::GamesController < ApplicationController

  def index 
    games = Game.order(id: :asc).limit(10)
    render json: GameSerializer.new(games), status: 200
  end

end
