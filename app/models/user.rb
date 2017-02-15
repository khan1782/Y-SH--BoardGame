class User < ApplicationRecord
  has_many :comments

  has_many :user_games
  has_many :games, through: :user_games

  has_many :friendships
  has_many :friends, through: :friendships, source: :adder
  has_many :inverse_friends, through: :friendships, source: :confirmer
end
