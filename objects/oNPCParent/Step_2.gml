/// @description 
// AI Path
if (pathNextPoint > 0) {
	// Reached point
	if (targetX == x && targetY == y) {
		// Go to next point
		pathNextPoint ++;
		
		// Path is over
		if (pathNextPoint >= path_get_number(path)) {
			pathNextPoint = -1;
			
			moving = false;
		}
	}
}