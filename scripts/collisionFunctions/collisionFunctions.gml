// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_at_cell (cell_x, cell_y) {
	// Check tile collision
	var _tile = tilemap_get(global.collisionTilemap, cell_x, cell_y);
	
	if (_tile) return true;
	
	// Get room coordinates
	var _cs = CELLSIZE;
	var _checkX = (cell_x + 0.5) * _cs;
	var _checkY = (cell_y + 0.5) * _cs;
	
	// Check object collision
	var _col = place_meeting(_checkX, _checkY, oCollision);
	
	if (_col) return true;
	
	// Check NPC collision
	var _npc = instance_position(_checkX, _checkY, oEntityParent);
	
	if (_npc) return true;
	
	// No collision
	return false;
}