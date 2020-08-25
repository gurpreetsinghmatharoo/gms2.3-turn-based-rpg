/// @description 
// AI Path
if (pathNextPoint > 0) {
	var _pointX = path_get_point_x(path, pathNextPoint);
	var _pointY = path_get_point_y(path, pathNextPoint);
	
	// Reached point
	if (_pointX == x && _pointY == y) {
		// Go to next point
		pathNextPoint ++;
		
		// Path is over
		if (pathNextPoint >= path_get_number(path)) {
			pathNextPoint = -1;
			
			moving = false;
		}
	}
}