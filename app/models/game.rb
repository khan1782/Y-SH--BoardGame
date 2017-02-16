class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :user_games
  has_many :comments
  
  def self.bgg_top_ten
  	Game.all.sort_by {|game| game.bgg_rating.to_f}.reverse[0..9]
  end
end
