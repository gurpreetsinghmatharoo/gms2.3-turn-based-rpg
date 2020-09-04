/// @description Created only for Battle
// Create sequence
battleSeq = layer_sequence_create(global.seqLayer, 0, 0, seqBattleScene);

// Battle data
listOfPlayers = ds_list_create();
playerTurn = 0;

// Initiate battle
InitBattle = function (_playerInstance, _enemyInstancesArray) {
	
}