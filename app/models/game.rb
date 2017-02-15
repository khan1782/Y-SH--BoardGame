class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :user_games

  def self.top_ten
  	Game.all.sort_by {|game| game.bgg_rating}
  end
end
