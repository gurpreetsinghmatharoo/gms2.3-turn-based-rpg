/// @description 
// Textbox enabled
if (textboxEnabled) {
	var _data = messageData[messageAt];
	var _length = string_length(_data.message);
	var _character = string_char_at(_data.message, charAt);
	
	// Start timer
	if (startTimer < startWait) {
		startTimer ++;
	}
	else {
		var _newCharSpeed = charSpeed;
		
		if (_character == "." || _character == ",") {
			_newCharSpeed /= 8;
		}
		
		charAt += _newCharSpeed;
	}
	
	// Check if finished
	if (charAt >= _length) {
		// Timer
		if (endTimer < endWait) {
			endTimer ++;
		}
		else {
			// Enable space key
			if (instance_exists(oNextArrow)) {
				oNextArrow.image_alpha = 1;
			}
		
			// Check for input
			if (global.inputSpacePressed) {
				NextMessage();
			}
		}
	}
	else {
		// Disable space key
		if (instance_exists(oNextArrow)) {
			oNextArrow.image_alpha = 0;
		}
	}
}