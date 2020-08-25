/// @description 
// Variables
seqElm = -1;
messageData = -1;

// Create layer for sequence
seqLayer = "SequenceLayer";
if (!layer_exists(seqLayer)) layer_create(0, seqLayer);

// Initialize function
initialize = function (data) {
	messageData = data;
	
	// Create sequence element
	seqElm = layer_sequence_create(seqLayer, 0, 0, seqTextboxTemporary);
}