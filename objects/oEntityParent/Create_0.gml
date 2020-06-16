/// @description 
// Set mask
mask_index = sEntityMask;

// Input variables (set in Begin Step)
inputX = 0;
inputY = 0;

// Movement Properties
moveSpeed = 1;

// Movement Variables
moveX = 0;
moveY = 0;
moveDirection = 0;

moving = false;
targetX = x;
targetY = y;

// States
states = {
	idle : {
		left: sPlayer_Left_Idle,
		right: sPlayer_Right_Idle,
		down: sPlayer_Down_Idle,
		up: sPlayer_Up_Idle
	},
	
	walk : {
		left: sPlayer_Left_Walk,
		right: sPlayer_Right_Walk,
		down: sPlayer_Down_Walk,
		up: sPlayer_Up_Walk
	}
}

// State
state = states.idle;