
global.messages = {};

// Characters/Speakers
speakers = {
	player : {
		name : "Player",
		image : sPlayer_Right_Idle,
	},
	
	bob : {
		name : "Bob",
		image : sTemplate_Right_Idle,
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
		message : "Um, just waiting for Rob. He said he'd be here at 11... That guy is never on time! I hate him!"
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
