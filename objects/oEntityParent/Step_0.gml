/// @description 
// States
switch (state) {
	// Idle & walk share the same code
	case states.idle:
	case states.walk:
		// Input
		if (inputX != 0 || inputY != 0) {
			// Distance to target
			var _dist = point_distance(x, y, targetX, targetY);
			
			// Near target
			if (_dist <= moveSpeed) {
				// Enable movement in only one direction
				if (inputX != 0)
					inputY = 0;
				
				// Get current cell
				var _cellX = floor(x / CELLSIZE);
				var _cellY = floor(y / CELLSIZE);
				
				// Get new cell
				var _newCellX = _cellX + sign(inputX);
				var _newCellY = _cellY + sign(inputY);
		
				// Check collisions
				var _col = collision_at_cell(_newCellX, _newCellY);
		
				// Move if no collisions
				if (!_col) {
					// Get new position (where you wanna move)
					var _newX = _newCellX * CELLSIZE;
					var _newY = _newCellY * CELLSIZE;
					
					// Set target
					// Actual position will be the center of the new cell
					targetX = _newX + CELLSIZE / 2;
					targetY = _newY + CELLSIZE / 2;
			
					// Enable moving
					moving = true;
				}
				// If there are collisions, at least face in that direction
				else {
					var _dir = point_direction(0, 0, inputX, inputY);
					moveDirection = floor(_dir / 90) mod 4;
				}
			}
		}

		// Moving
		if (moving) {
			// State
			state_set(states.walk);
		
			// X movement
			var _xDiff = targetX - x;
	
			if (abs(_xDiff) > moveSpeed) {
				moveX = sign(_xDiff) * moveSpeed;
			}
			else {
				x = targetX;
				moveX = 0;
			}
	
			// Y movement
			var _yDiff = targetY - y;
	
			if (abs(_yDiff) > moveSpeed) {
				moveY = sign(_yDiff) * moveSpeed;
			}
			else {
				y = targetY;
				moveY = 0;
			}
	
			// Disable moving
			if (x == targetX && y == targetY) {
				moving = false;
			}
		}
		// Not moving
		else {
			// State
			state_set(states.idle);
		}
	break;
}

if (object_index == oPlayer) log("Movement: ", [moveX, moveY]);

// Apply movement
x += moveX;
y += moveY;

// Get movement direction
var _dir = point_direction(0, 0, moveX, moveY);

// Get direction from 0-3
_dir = round(_dir / 90) mod 4;

// Set direction if moving
if (moveX != 0 || moveY != 0) {
	moveDirection = _dir;
}

// Set sprite based on direction
if (moveDirection == 0) sprite_index = state.right;
else if (moveDirection == 1) sprite_index = state.up;
else if (moveDirection == 2) sprite_index = state.left;
else if (moveDirection == 3) sprite_index = state.down;