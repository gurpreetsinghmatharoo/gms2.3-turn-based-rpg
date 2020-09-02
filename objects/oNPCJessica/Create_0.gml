/// @description 
event_inherited();

// States
states = {
	idle : {
		left: sJessica_Left_Idle,
		right: sJessica_Right_Idle,
		down: sJessica_Down_Idle,
		up: sJessica_Up_Idle,
	},
	
	walk : {
		left: sJessica_Left_Walk,
		right: sJessica_Right_Walk,
		down: sJessica_Down_Walk,
		up: sJessica_Up_Walk,
	}
}

state = states.idle;