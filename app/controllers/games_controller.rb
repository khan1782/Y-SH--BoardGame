class GamesController < ApplicationController
	def index
		@list_of_games = Game.bgg_top_ten
		@list_title = "Popular Games"
	end

	def show
		@game = Game.find_by_id(params[:id])
		@new_comment = @game.comments.new
	end
end
