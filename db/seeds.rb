User.create([
	{name:"Kevin", email:"kevin@gmail.com", password_digest:"password"},
	{name:"Yibin", email:"yibin@gmail.com", password_digest:"password"},
	{name:"Savance", email:"savance@gmail.com", password_digest:"password"},
	{name:"nick", email:"nick@gmail.com", password_digest:"password"}
])

Game.create([
	{title:"Naked Twister",description:"",time:"",players:"",image:"",publisher:""},
	{title:"Non-naked Twister",description:"",time:"",players:"",image:"",publisher:""},
	{title:"Connect 4",description:"",time:"",players:"",image:"",publisher:""},
	{title:"Tic-Tac-Toe",description:"",time:"",players:"",image:"",publisher:""},
	{title:"Rock paper scissors",description:"",time:"",players:"",image:"",publisher:""},
	{title:"Monopoly",description:"",time:"",players:"",image:"",publisher:""}
])

Friendship.create([
	{adder_id:1, confirmer_id:2, confirmed?:false},
	{adder_id:1, confirmer_id:3, confirmed?:true},
	{adder_id:2, confirmer_id:4, confirmed?:false},
	{adder_id:4, confirmer_id:1, confirmed?:true}
])


KEVIN WHAT UPPPPPPPPPPP
require 'net/http'
require 'json'

URI('http://bgg-json.azurewebsites.net/collection/edwalter?grouped=true')
uri = URI('http://bgg-json.azurewebsites.net/collection/edwalter?grouped=true')

Net::HTTP.get(uri)
games = JSON.parse(Net::HTTP.get(uri))



games.each do |game|
  print "Game Name: "
  puts game["name"]

  print "Min Players: "
  puts game["minPlayers"]

  print "Max Players: "
  puts game["maxPlayers"]

  print "Playing Time: "
  puts game["playingTime"]

  print "Year Published: "
  puts game["yearPublished"]

  print "Average Rating: "
  puts game["averageRating"]

  print "Image Link: "
  puts "http:"+game["image"]

  print "Thumbnail Link: "
  puts "http:"+game["thumbnail"]

  puts "*"*80
  puts " "*80
  puts " "*80
end

