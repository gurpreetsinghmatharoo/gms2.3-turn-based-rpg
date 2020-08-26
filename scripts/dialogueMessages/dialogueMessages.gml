
global.messages = {};

// Characters/Speakers
speakers = {
	player : {
		name : "Player",
		image : sPlayer_Right_Walk,
	},
	
	bob : {
		name : "Bob",
		image : sTemplate_Right_Walk,
	}
}

// Messages
global.messages.bob_0 = [
	{
		speaker : speakers.player,
		message : "What are you doing?",
	},
	{
		speaker : speakers.bob,
		message : "Um, just waiting for Rob."
	},
	{
		speaker : speakers.bob,
		message : "I'm Bob, by the way."
	},
	{
		speaker : speakers.player,
		message : "I know."
	}
];


