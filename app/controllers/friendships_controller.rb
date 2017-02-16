class FriendshipsController < ApplicationController
  def create
    friendship = Friendship.create(adder_id: session[:user_id],confirmer_id: params["user_id"].to_i )
    redirect_to user_path(session[:user_id])
  end
end
