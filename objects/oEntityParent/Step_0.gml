/// @description 
// States
switch (state) {
	// Idle & walk share the same code
	case states.idle:
	case states.walk:
		// Input
		// In this part, we check if there's input on X and Y axes.
		// If there is, and we're not moving, we get the coordinates
		//   of the new position (where we want to move).
		// Then we check collisions in that block.
		// If there are no collisions, we enable movement
		//   and set the target to the new position.
		//
		if (inputX != 0 || inputY != 0) {
			// Not moving
			if (!moving) {
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
			}
		}

		// Moving
		// In this part, we check if the entity is moving
		// If it is, we handle movement on X and Y
		if (moving) {
			// State
			state_set(states.walk);
		
			// Get difference between targetX and x
			var _xDiff = targetX - x;
	
			// Difference is larger than movement speed
			// meaning that there is enough room for movement
			if (abs(_xDiff) > moveSpeed) {
				// Move in that direction
				moveX = sign(_xDiff) * moveSpeed;
			}
			// Difference is small
			// meaning that we're mostly there
			else {
				// So we just fully move there
				x = targetX;
			
				// Stop movement
				moveX = 0;
			}
	
			// Repeat the same for Y
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

// Apply movement
x += moveX;
y += moveY;

// Get movement direction
var _dir = point_direction(0, 0, moveX, moveY);

// Get direction from 0-3
_dir = floor(_dir / 90) mod 4;

// Set direction if moving
if (moveX != 0 || moveY != 0) {
	moveDirection = _dir;
}

// Set sprite based on direction
if (moveDirection == 0) sprite_index = state.right;
else if (moveDirection == 1) sprite_index = state.up;
else if (moveDirection == 2) sprite_index = state.left;
else if (moveDirection == 3) sprite_index = state.down;