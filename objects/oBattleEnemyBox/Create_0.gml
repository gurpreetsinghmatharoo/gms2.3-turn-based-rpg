/// @description 

// Inherit the parent event
event_inherited();

// Battle player
battlePlayer = oBattleManager.listOfPlayers[| global.enemyBoxID];
global.enemyBoxID ++;