class User < ApplicationRecord
  has_many :comments

  has_many :user_games
  has_many :games, through: :user_games

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: "Friendship", foreign_key: :friend_id
  has_many :inverse_friends, through: :inverse_friendships, source: :user
end
