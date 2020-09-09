/// @description 

// Inherit the parent event
event_inherited();

// Battle player
battlePlayer = -1;

if (global.enemyBoxID < ds_list_size(oBattleManager.listOfPlayers)) {
	battlePlayer = oBattleManager.listOfPlayers[| global.enemyBoxID];
	global.enemyBoxID ++;
	
	battlePlayer.boxInstance = self;
}