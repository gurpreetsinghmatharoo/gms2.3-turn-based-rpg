/// @description 

// Inherit the parent event
event_inherited();

// States
states = {
	idle : {
		left: sMaskedGoon_Left_Idle,
		right: sMaskedGoon_Right_Idle,
		down: sMaskedGoon_Down_Idle,
		up: sMaskedGoon_Up_Idle,
	},
	
	walk : {
		left: sMaskedGoon_Left_Walk,
		right: sMaskedGoon_Right_Walk,
		down: sMaskedGoon_Down_Walk,
		up: sMaskedGoon_Up_Walk,
	}
}

state = states.idle;

// Actions
actions = [
	new Punch(),
	new Slap(),
	new Heal()
];