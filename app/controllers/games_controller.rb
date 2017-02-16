class GamesController < ApplicationController
	def index
		@list_of_games = Game.bgg_top_ten
		@list_title = "Popular Games"
	end
end
