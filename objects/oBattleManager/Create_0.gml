/// @description Created only for Battle
// Pause the game
global.paused = true;

// Create sequence
battleSeq = layer_sequence_create(global.seqLayer, 0, 0, seqBattleScene);

// Battle data
listOfPlayers = ds_list_create();

activeTurn = 0;
selectedAction = -1;

selectedOpponent = -1;

choosing = true;

// Box IDs
global.enemyBoxID = 1;
global.actionBoxID = 0;

/// @func	InitBattle
/// @arg	player_instance
/// @arg	enemy_instances_array
InitBattle = function (_playerInstance, _enemyInstancesArray) {
	// Main player
	// Note: Currently an object index is being specified as the box instance
	// Ideally you'd want it to be an instance reference, but that's not easy
	// right now due to the way Sequences only create instances in the next
	// frame
	var _battlePlayer = new BattlePlayer(_playerInstance);
	ds_list_add(listOfPlayers, _battlePlayer);
	
	// Enemy players
	var _len = array_length(_enemyInstancesArray);
	
	for (var i = 0; i < _len; i ++) {
		var _enemyInstance = _enemyInstancesArray[i];
		
		var _battlePlayerAI = new BattlePlayerAI(_enemyInstance);
		ds_list_add(listOfPlayers, _battlePlayerAI);
	}
}


/// @func	CheckOver
CheckOver = function () {
	var _size = ds_list_size(listOfPlayers);
	
	var _alivePlayers = 0;
	
	for (var i = 0; i < _size; i ++) {
		var _battlePlayer = listOfPlayers[| i];
		
		if (_battlePlayer.instance.GetHP() > 0) {
			_alivePlayers ++;
		}
	}
	
	// Over
	if (_alivePlayers <= 1) {
		instance_destroy();
	}
}