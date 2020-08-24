/// @description 

// Inherit the parent event
event_inherited();

// States
states = {
	idle : {
		left: sTemplate_Left_Idle,
		right: sTemplate_Right_Idle,
		down: sTemplate_Down_Idle,
		up: sTemplate_Up_Idle,
	},
	
	walk : {
		left: sTemplate_Left_Walk,
		right: sTemplate_Right_Walk,
		down: sTemplate_Down_Walk,
		up: sTemplate_Up_Walk,
	}
}

state = states.idle;