/// @description 
// Coordinates to check
var _len = CELLSIZE;
var _dir = moveDirection * 90;

var _checkX = x + lengthdir_x(_len, _dir);
var _checkY = y + lengthdir_y(_len, _dir);

// Get NPC
var _npcInst = instance_position(_checkX, _checkY, oNPCParent);

if (instance_exists(_npcInst)) {
	// Check for input
	if (inputSpace && is_array(_npcInst.messageData)) {
		global.textboxManager.CreateDialogue(_npcInst.messageData, -1, -1);
		
		_npcInst.moveDirection = get_4_directional(point_direction(_npcInst.x, _npcInst.y, x, y));
	}
}