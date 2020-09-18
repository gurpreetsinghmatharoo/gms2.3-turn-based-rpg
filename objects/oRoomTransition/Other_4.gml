/// @description 
// Start sequence
startSeq = layer_sequence_create(global.seqLayer, 0, 0, seqRoomStart);

// Place player
if (instance_exists(targetSpawner) && instance_exists(oPlayer)) {
	oPlayer.x = targetSpawner.x + targetSpawner.sprite_width / 2;
	oPlayer.y = targetSpawner.y + targetSpawner.sprite_height / 2;
	
	// Restore player data
	oPlayer.hp = playerData.hp;
	oPlayer.maxHP = playerData.maxHP;
	oPlayer.attack = playerData.attack;
	oPlayer.defense = playerData.defense;
	oPlayer.level = playerData.level;
	oPlayer.xp = playerData.xp;
}