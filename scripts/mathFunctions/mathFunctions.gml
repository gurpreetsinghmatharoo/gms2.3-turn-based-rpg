
function to_cell_coords (val) {
	return floor(val / CELLSIZE);
}

function to_room_coords (val) {
	return val * CELLSIZE;
}

function to_gui_coords (_struct) {
	// Get data
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	static _camWidth = camera_get_view_width(view_camera[0]);
	static _camHeight = camera_get_view_height(view_camera[0]);
	static _guiWidth = display_get_gui_width();
	static _guiHeight = display_get_gui_height();
	
	// Convert position
	_struct.x -= _camX;
	_struct.y -= _camY;
	
	// Convert scale
	_struct.x *= (_guiWidth / _camWidth);
	_struct.y *= (_guiHeight / _camHeight);
	
	// Return
	return _struct;
}

function get_4_directional (dir) {
	return round(dir / 90) mod 4;
}