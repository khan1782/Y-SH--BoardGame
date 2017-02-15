class User < ApplicationRecord
  has_many :comments

  has_many :user_games
  has_many :games, through: :user_games
  has_many :initiated_friendships, class_name: "Friendship", foreign_key: :adder_id
  has_many :received_friendships, class_name: "Friendship", foreign_key: :confirmer_id




  def friends	
  	initiated_friends = self.initiated_friendships.select{|friendship| friendship.confirmed?}.map{ |friendship| friendship.confirmer }
  	received_friends = self.received_friendships.select{|friendship| friendship.confirmed?}.map{ |friendship| friendship.adder }
  	initiated_friends + received_friends
  end

end