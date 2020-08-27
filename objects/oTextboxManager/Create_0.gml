/// @description 
messageData = -1;

// Textbox properties
charSpeed = 0.5;

// Important variables
textboxEnabled = false;
charAt = 0;
messageAt = 0;

// Sequence
seqElm = -1;
seqLayer = layer_create(depth+100, "SequenceLayer");

// Create dialogue function
endCallback = -1;

CreateDialogue = function (data, startMethod, endMethod) {
	// Exit if already enabled
	if (textboxEnabled) return;
	
	// Enable
	messageData = data;
	textboxEnabled = true;
	
	// Create sequence element
	seqElm = layer_sequence_create(seqLayer, 0, 0, seqTextboxTemporary);
	
	// Method callbacks
	if (is_method(startMethod)) startMethod();
	endCallback = endMethod;
}

// Draw image in box function
DrawImageInBox = function (boxInst, image) {
	// Static data
	// This is like a Create event for this function
	static frame = 0;
	static imageSpeed = sprite_get_speed(image);
	static width = sprite_get_width(image);
	static height = sprite_get_height(image);
	static boxWidth = boxInst.sprite_width;
	static boxHeight = boxInst.sprite_height;
	
	static scaleX = boxWidth / width;
	static scaleY = boxHeight / height;
	
	// Draw
	draw_sprite_ext(image, frame,
		(boxInst.x + boxWidth / 2), (boxInst.y + boxHeight / 2),
		scaleX, scaleY, 0, -1, 1);
	
	// Frames
	frame += (1 / 60) * imageSpeed;
}

// Next line
NextMessage = function () {
	var _messageCount = array_length(messageData);
	
	// End
	if (messageAt == _messageCount - 1) {
		if (is_method(endCallback)) endCallback();
		
		layer_sequence_destroy(seqElm);
		
		alarm[0] = 20;
	}
	// Continue
	else {
		messageAt ++;
		charAt = 0;
	}
}