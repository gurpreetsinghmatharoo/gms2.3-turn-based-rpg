/// @description 
if (global.paused) {
	SetSprite(states.idle);
	exit;
}

// States
switch (state) {
	// Idle & walk share the same code
	case states.idle:
	case states.walk:
		// Input
		if (inputX != 0 || inputY != 0) {
			// Not moving
			if (!moving) {
				// Enable movement in only one direction
				if (inputX != 0)
					inputY = 0;
				
				// Get current cell
				var _cellX = to_cell_coords(x);
				var _cellY = to_cell_coords(y);
				
				// Get new cell
				var _newCellX = _cellX + sign(inputX);
				var _newCellY = _cellY + sign(inputY);
		
				// Check collisions
				var _col = collision_at_cell(_newCellX, _newCellY);
		
				// Move if no collisions
				if (!_col) {
					// Set target
					targetX = to_room_coords(_newCellX) + CELLSIZE / 2;
					targetY = to_room_coords(_newCellY) + CELLSIZE / 2;
			
					// Enable moving
					moving = true;
				}
				// If there are collisions, at least face in that direction
				else {
					moveDirection = get_4_directional(point_direction(0, 0, inputX, inputY));
				}
			}
		}

		// Moving
		if (moving) {
			// State
			state_set(states.walk);
			
			// Reached
			if (point_distance(x, y, targetX, targetY) <= moveSpeed) {
				moveX = 0;
				moveY = 0;
				
				x = targetX;
				y = targetY;
				
				moving = false;
			}
			// Not reached
			else {
				moveX = sign(targetX - x) * moveSpeed;
				moveY = sign(targetY - y) * moveSpeed;
			}
		}
		// Not moving
		else {
			// State
			state_set(states.idle);
		}
	break;
}

// Apply movement
x += moveX;
y += moveY;

// Get direction from 0-3
var _dir = get_4_directional(point_direction(0, 0, moveX, moveY));

// Set direction if moving
if (moveX != 0 || moveY != 0) {
	moveDirection = _dir;
}

// Set sprite based on direction (moved to function call)
//if (moveDirection == 0) sprite_index = state.right;
//else if (moveDirection == 1) sprite_index = state.up;
//else if (moveDirection == 2) sprite_index = state.left;
//else if (moveDirection == 3) sprite_index = state.down;

SetSprite(state);