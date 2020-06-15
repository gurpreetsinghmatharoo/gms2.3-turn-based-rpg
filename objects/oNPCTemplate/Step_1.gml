/// @description 

// Inherit the parent event
event_inherited();

// Temporary input
var _dir = point_direction(x, y, mouse_x, mouse_y);
var _dist = point_distance(x, y, mouse_x, mouse_y);

if (_dist < 20) {
	inputX = 0;
	inputY = 0;
}
else {
	inputX = dcos(_dir);
	
	if (abs(y - mouse_y) > 30) {
		inputY = -dsin(_dir);
		inputX = 0;
	}
}