/// @description 

// Inherit the parent event
event_inherited();

// Die
if (!instance_exists(oBattleManager) && hp <= 0) {
	instance_destroy();
}