/// @description 
messageData = -1;

// Textbox properties
charSpeed = 0.5;

// Important variables
textboxEnabled = false;
charAt = 0;
messageAt = 0;

// Waiting
startWait = 12;
endWait = 30;

startTimer = 0;
endTimer = 0;

// Sequence
seqElm = -1;
seqLayer = global.seqLayer;

// Create dialogue function
endCallback = -1;

CreateDialogue = function (data, startMethod, endMethod) {
	// Exit if already enabled
	if (textboxEnabled) return;
	
	// Enable
	messageData = data;
	textboxEnabled = true;
	
	// Create sequence element
	seqElm = layer_sequence_create(seqLayer, 0, 0, seqTextbox);
	
	// Method callbacks
	if (is_method(startMethod)) startMethod();
	endCallback = endMethod;
}

// Next line
NextMessage = function () {
	var _messageCount = array_length(messageData);
	
	// Reset timers
	startTimer = 0;
	endTimer = 0;
	
	// End
	if (messageAt == _messageCount - 1) {
		if (is_method(endCallback)) endCallback();
		
		layer_sequence_destroy(seqElm);
		
		// Disable textbox
		textboxEnabled = false;
		charAt = 0;
		messageAt = 0;
		
		// Disable player's input
		with (oPlayer) {
			inputSpace = false;
		}
	}
	// Continue
	else {
		messageAt ++;
		charAt = 0;
	}
}