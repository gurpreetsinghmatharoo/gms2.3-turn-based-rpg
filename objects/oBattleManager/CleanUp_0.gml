/// @description 
// Unpause the game
global.paused = false;

// Free memory
layer_sequence_destroy(battleSeq);
ds_list_destroy(listOfPlayers);