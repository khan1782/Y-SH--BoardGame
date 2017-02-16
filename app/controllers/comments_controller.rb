class CommentsController < ApplicationController
	def create
		new_comment = Comment.new(comment_params)
		new_comment.game_id = params[:game_id]
		new_comment.user_id = 1
		new_comment.save
		game = Game.find_by_id(new_comment.game_id)
		redirect_to game_path(game)
	end
	private
	def comment_params
		params.require(:comment).permit(:body)
	end
end
