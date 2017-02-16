class GamesController < ApplicationController
	def index
		@list_action = params[:list_of_games]
		if @list_action
			if @list_action == "random"
				@list_of_games = Game.random_ten 
				@list_title = "Random Ten"
			elsif @list_action == "user"
				@list_of_games = Game.user_top_ten
				@list_title = "User Top Ten"
			elsif @list_action = "bgg"
				@list_of_games = Game.bgg_top_ten
				@list_title = "BGG Top Ten"
			end
		else
			@list_of_games = Game.popular
			@list_title = "Popular Games"
		end
	end

	def show
		@game = Game.find_by_id(params[:id])
		@new_comment = @game.comments.new
	end
end
