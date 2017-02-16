User.create([
	{name:"Kevin", email:"kevin@gmail.com", password_digest:"password"},
	{name:"Yibin", email:"yibin@gmail.com", password_digest:"password"},
	{name:"Savance", email:"savance@gmail.com", password_digest:"password"},
	{name:"nick", email:"nick@gmail.com", password_digest:"password"}
])
Friendship.create([
	{adder_id:1, confirmer_id:2, confirmed?:false},
	{adder_id:1, confirmer_id:3, confirmed?:true},
	{adder_id:2, confirmer_id:4, confirmed?:false},
	{adder_id:4, confirmer_id:1, confirmed?:true}
])


require 'net/http'
require 'json'

URI('http://bgg-json.azurewebsites.net/collection/edwalter?grouped=true')
uri = URI('http://bgg-json.azurewebsites.net/collection/edwalter?grouped=true')

Net::HTTP.get(uri)
games = JSON.parse(Net::HTTP.get(uri))

games.each do |game|

  new_game = Game.new

  new_game.title = game["name"]
  new_game.min_players = game["minPlayers"]
  new_game.max_players = game["maxPlayers"]
  new_game.playing_time = game["playingTime"]
  new_game.year_published = game["yearPublished"]
  new_game.bgg_rating = game["averageRating"]
  new_game.image = "http:"+game["image"]
  new_game.thumbnail = "http:"+game["thumbnail"]
  new_game.save
end

