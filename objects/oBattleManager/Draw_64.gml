/// @description 
// Sequence surface
if (surface_exists(global.seqSurf)) {
	surface_set_target(global.seqSurf);
	
	// Draw Battle Players
	var _playerCount = ds_list_size(listOfPlayers);

	for (var i = 0; i < _playerCount; i ++) {
		var _battlePlayer = listOfPlayers[| i];
	
		_battlePlayer.Draw();
	}
	
	surface_reset_target();

	// Draw sequence surface
	draw_surface(global.seqSurf, 0, 0);
}