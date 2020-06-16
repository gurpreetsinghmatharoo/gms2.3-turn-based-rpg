// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_at_cell (cell_x, cell_y) {
	// Get tile collision
	var _tile = tilemap_get(global.collisionTilemap, cell_x, cell_y);
	
	if (_tile) return true;
	
	// Get NPC collision
	var _cs = CELLSIZE;
	var _checkX = (cell_x + 0.5) * _cs;
	var _checkY = (cell_y + 0.5) * _cs;
	var _npc = instance_position(_checkX, _checkY, oEntityParent);
	
	if (_npc) return true;
	
	// No collision
	return false;
}