/// @description Created only for Battle
// Pause the game
global.paused = true;

// Create sequence
battleSeq = layer_sequence_create(global.seqLayer, 0, 0, seqBattleScene);

// Battle data
listOfPlayers = ds_list_create();

activeTurn = 0;
activeAttack = -1;

selectedOpponent = -1;

choosing = true;

// Action box IDs
global.actionBoxID = 0;

// Initiate battle
/// @func	InitBattle
/// @arg	player_instance
/// @arg	enemy_instances_array
InitBattle = function (_playerInstance, _enemyInstancesArray) {
	// Main player
	// Note: Currently an object index is being specified as the box instance
	// Ideally you'd want it to be an instance reference, but that's not easy
	// right now due to the way Sequences only create instances in the next
	// frame
	var _battlePlayer = new BattlePlayer(_playerInstance, oBattlePlayerBox);
	ds_list_add(listOfPlayers, _battlePlayer);
	
	// Enemy players
	var _len = array_length(_enemyInstancesArray);
	
	for (var i = 0; i < _len; i ++) {
		var _enemyInstance = _enemyInstancesArray[i];
		
		var _battlePlayerAI = new BattlePlayerAI(_enemyInstance, oBattleEnemyBox);
		ds_list_add(listOfPlayers, _battlePlayerAI);
	}
}