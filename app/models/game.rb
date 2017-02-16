class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :user_games
  has_many :comments

  def self.bgg_top_ten
  	Game.all.sort_by {|game| game.bgg_rating.to_f}.reverse[0..9]
  end

  def self.random_top_ten
  	Game.all.sample(10)
  end

  def self.user_top_ten
  	Game.all.sort_by {|game| game.user_games.count }.reverse[0..9]
 	end

  def self.num_users(player_num)
  	Game.all.select {|game| player_num >= game.min_players && player_num <= game.max_players }.sample(10)
  end

  def self.eight_plus
  	Game.all.select {|game| game.max_players >= 8}
  end

end
