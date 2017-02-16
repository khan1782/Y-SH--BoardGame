class FriendshipsController < ApplicationController
  def create
    friendship = Friendship.create(adder_id: session[:user_id],confirmer_id: params["user_id"].to_i )
    redirect_to user_path(session[:user_id])
  end

  def update
    friendship = Friendship.find(params[:friendship_id].to_i)
    friendship.update(confirmed?: true)
    user = User.find(friendship.confirmer_id)
    redirect_to user_path(user)
  end

  def destroy
    friendship = Friendship.find(params[:friendship_id].to_i)
    user = User.find(friendship.confirmer_id)
    friendship.destroy
    redirect_to user_path(user)
  end
end
