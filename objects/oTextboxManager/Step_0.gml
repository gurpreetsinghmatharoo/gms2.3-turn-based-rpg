/// @description 
// Textbox enabled
if (textboxEnabled) {
	charAt += charSpeed;
	
	// Check if finished
	var _data = messageData[messageAt];
	var _length = string_length(_data.message);
	
	if (charAt >= _length) {
		// Enable space key
		if (instance_exists(oSpaceKey)) {
			oSpaceKey.image_alpha = 1;
		}
		
		// Check for input
		if (global.inputSpacePressed) {
			NextMessage();
		}
	}
	else {
		// Disable space key
		if (instance_exists(oSpaceKey)) {
			oSpaceKey.image_alpha = 0;
		}
	}
}