// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function to_cell_coords (val) {
	return floor(val / CELLSIZE);
}

function to_room_coords (val) {
	return val * CELLSIZE;
}