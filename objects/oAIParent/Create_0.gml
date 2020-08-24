/// @description 

// Inherit the parent event
event_inherited();

// Pathfinding
path = path_add();
pathNextPoint = 0;

// Face direction
moveDirection = faceDirection;

// Random movement
moveTimer = 0;
minMoveTime = 100;
maxMoveTime = 200;

// Method: moveToPoint()
moveToPoint = function (_x, _y) {
	// Center in cell
	_x = floor(_x / CELLSIZE) * CELLSIZE;
	_y = floor(_y / CELLSIZE) * CELLSIZE;
	_x += CELLSIZE / 2;
	_y += CELLSIZE / 2;
	
	// Find path
	var _found = mp_grid_path(global.AI_MPGrid, path, x, y, _x, _y, false);
	
	if (_found) {
		pathNextPoint = 1;
	}
}