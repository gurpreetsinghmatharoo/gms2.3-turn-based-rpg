
function to_cell_coords (val) {
	return floor(val / CELLSIZE);
}

function to_room_coords (val) {
	return val * CELLSIZE;
}

function get_4_directional (dir) {
	return round(dir / 90) mod 4;
}

function xp_for_next_level(level) {
	static _baseXP = 100;
	
	return (_baseXP * power(level, 1.5));
}