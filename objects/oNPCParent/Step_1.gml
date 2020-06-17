/// @description 

// Inherit the parent event
event_inherited();

// Moves
if (moves) {
	// Move to new position
	if (moveTimer <= 0) {
		// Select new position
		var _distance = irandom_range(CELLSIZE, moveRadius);
		var _direction = irandom(360);
	
		var _x = xstart + lengthdir_x(_distance, _direction);
		var _y = ystart + lengthdir_y(_distance, _direction);
	
		moveToPoint(_x, _y);
	
		// Re-set move timer
		moveTimer = irandom_range(minMoveTime, maxMoveTime);
	}
	// Count down timer
	else {
		moveTimer --;
	}
}

// Follow AI path
if (pathNextPoint > 0) {
	var _pointX = path_get_point_x(path, pathNextPoint);
	var _pointY = path_get_point_y(path, pathNextPoint);
	
	inputX = sign(_pointX - x);
	inputY = sign(_pointY - y);
}
else {
	inputX = 0;
	inputY = 0;
}