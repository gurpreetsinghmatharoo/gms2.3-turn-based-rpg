/// @description 

// Inherit the parent event
event_inherited();

// Battle player
battlePlayer = oBattleManager.listOfPlayers[| 0];
battlePlayer.boxInstance = self;