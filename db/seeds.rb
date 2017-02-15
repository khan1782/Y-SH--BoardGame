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

