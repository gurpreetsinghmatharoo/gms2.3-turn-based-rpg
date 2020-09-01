/// @description 
// Textbox enabled
if (textboxEnabled) {
	if (startTimer < startWait) {
		startTimer ++;
	}
	else {
		charAt += charSpeed;
	}
	
	// Check if finished
	var _data = messageData[messageAt];
	var _length = string_length(_data.message);
	
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