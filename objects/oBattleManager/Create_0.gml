/// @description Created only for Battle
// Pause the game
global.paused = true;

// Battle sequence
battleSeq = layer_sequence_create(global.seqLayer, 0, 0, seqBattleScene);

// Invisible
layer_set_visible(global.seqLayer, false);

// Transition sequences
introSeq = layer_sequence_create(global.seqLayer2, 0, 0, seqBattleEnter);
outroSeq = -1;

// Battle data
listOfPlayers = ds_list_create();

activeTurn = 0;
selectedAction = -1;

selectedOpponent = -1;

choosing = true;
over = false;

// Box IDs
global.enemyBoxID = 1;
global.actionBoxID = 0;

/// @func	InitBattle
/// @arg	player_instance
/// @arg	enemy_instances_array
InitBattle = function (_playerInstance, _enemyInstancesArray) {
	// Main player
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
		over = true;
		
		outroSeq = layer_sequence_create(global.seqLayer2, 0, 0, seqBattleExit);
	}
}