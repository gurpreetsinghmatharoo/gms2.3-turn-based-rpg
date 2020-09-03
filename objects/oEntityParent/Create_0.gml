/// @description 
// Set position based on cell size
x = to_room_coords(to_cell_coords(x)) + CELLSIZE / 2;
y = to_room_coords(to_cell_coords(y)) + CELLSIZE / 2;

// Set mask
mask_index = sEntityMask;

// Input variables (set in Begin Step)
inputX = 0;
inputY = 0;
inputSpace = false;

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

// Icon sprite
iconSprite = -1;

// Set sprite from state (function is made later in course)
SetSprite = function (state) {
	if (moveDirection == 0) sprite_index = state.right;
	else if (moveDirection == 1) sprite_index = state.up;
	else if (moveDirection == 2) sprite_index = state.left;
	else if (moveDirection == 3) sprite_index = state.down;
}

// Set stats
hp = maxHP;
attack = maxAttack;
defense = maxDefense;

// Stat getters
// HP
GetHP = function () {
	return hp;
}

GetMaxHP = function () {
	return maxHP;
}

// Attack
GetAttack = function () {
	return attack;
}

GetMaxAttack = function () {
	return maxAttack;
}

// Defense
GetDefense = function () {
	return defense;
}

GetMaxDefense = function () {
	return maxDefense;
}