/// @description Created only for Battle
// Pause the game
global.paused = true;

// Create sequence
battleSeq = layer_sequence_create(global.seqLayer, 0, 0, seqBattleScene);

// Battle data
listOfPlayers = ds_list_create();
playerTurn = 0;

// Initiate battle
/// @func	InitBattle
/// @arg	player_instance
/// @arg	enemy_instances_array
InitBattle = function (_playerInstance, _enemyInstancesArray) {
	// Main player
	var _battlePlayer = new BattlePlayer(_playerInstance.name, _playerInstance, oBattlePlayerBox);
	ds_list_add(listOfPlayers, _battlePlayer);
	
	// Enemy players
	var _len = array_length(_enemyInstancesArray);
	
	for (var i = 0; i < _len; i ++) {
		var _enemyInstance = _enemyInstancesArray[i];
		
		var _battlePlayerAI = new BattlePlayerAI(_enemyInstance.name, _enemyInstance, oBattleEnemyBox);
		ds_list_add(listOfPlayers, _battlePlayerAI);
	}
}