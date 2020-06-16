/// @description 

// Inherit the parent event
event_inherited();

// Move to mouse
if (mouse_check_button_pressed(mb_left)) {
	// Room coordinates to cell coordinates
	var _goalX = floor(mouse_x / CELLSIZE) * CELLSIZE;
	var _goalY = floor(mouse_y / CELLSIZE) * CELLSIZE;
	_goalX += CELLSIZE / 2;
	_goalY += CELLSIZE / 2;
	
	// Find path
	var _found = mp_grid_path(global.AI_MPGrid, path, x, y, _goalX, _goalY, false);
	
	if (_found) {
		pathNextPoint = 1;
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