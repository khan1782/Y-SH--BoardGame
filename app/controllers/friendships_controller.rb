class FriendshipsController < ApplicationController
  def create
    friendship = Friendship.new(adder_id: session[:user_id],confirmer_id: params["user_id"].to_i )
  end
end
