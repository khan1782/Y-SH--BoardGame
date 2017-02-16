class GamesController < ApplicationController
	def index
		@list_action = params[:list]
		if @list_action
			if @list_action == "random"
				@list_of_games = Game.random_ten 
				@list_title = "Random Ten"
			elsif @list_action == "user"
				@list_of_games = Game.user_top_ten
				@list_title = "User Top Ten"
			elsif @list_action == "bgg"
				@list_of_games = Game.bgg_top_ten
				@list_title = "BGG Top Ten"
			elsif @list_action == "by_num"
				num = params[:num].to_i
				@list_of_games = Game.num_users(num)
				@list_title = "#{num} Player Games"
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
