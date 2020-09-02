/// @description 
event_inherited();

// States
states = {
	idle : {
		left: sBob_Left_Idle,
		right: sBob_Right_Idle,
		down: sBob_Down_Idle,
		up: sBob_Up_Idle,
	},
	
	walk : {
		left: sBob_Left_Walk,
		right: sBob_Right_Walk,
		down: sBob_Down_Walk,
		up: sBob_Up_Walk,
	}
}

state = states.idle;