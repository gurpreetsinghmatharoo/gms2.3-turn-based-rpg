/// @description 
// Pause
if (keyboard_check_pressed(vk_escape) && !global.textboxManager.textboxEnabled && !instance_exists(oBattleManager)) {
	global.paused = !global.paused;
	
	// Paused
	if (global.paused) {
		pauseSeqElm = layer_sequence_create(global.seqLayer, 0, 0, seqPause);
	}
	// Unpaused
	else {
		layer_sequence_destroy(pauseSeqElm);
	}
}