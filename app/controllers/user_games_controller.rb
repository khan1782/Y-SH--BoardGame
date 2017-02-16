class UserGamesController < ApplicationController
  def create
    user_game = UserGame.create(user_id: session[:user_id], game_id: params["game_id"].to_i  )
    game = Game.find_by_id(user_game.game_id)
    redirect_to game_path(game)
  end
end


