/// @description 
// End sequence finished
if (layer_sequence_exists(global.seqLayer, endSeq) && layer_sequence_is_finished(endSeq)) {
	layer_sequence_destroy(endSeq);
	
	room_goto(targetRoom);
}

// Start sequence finished
if (layer_sequence_exists(global.seqLayer, startSeq) && layer_sequence_is_finished(startSeq)) {
	layer_sequence_destroy(startSeq);
	
	instance_destroy();
}