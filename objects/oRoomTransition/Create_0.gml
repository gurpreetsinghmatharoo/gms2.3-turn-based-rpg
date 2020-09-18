/// @description 
targetRoom = -1;
targetSpawner = noone;

// Sequence
endSeq = layer_sequence_create(global.seqLayer, 0, 0, seqRoomEnd);
startSeq = -1;

// Player data
playerData = get_entity_data(oPlayer);