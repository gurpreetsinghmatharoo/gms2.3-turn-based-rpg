/// @func	state_set
/// @arg	state
function state_set (_state) {
	if (state != _state) {
		state = _state;
		image_index = 0;
	}
}

/// @func	show_alert
/// @arg	message
/// @arg	image
function show_alert (_message, _image) {
	var _customSpeaker = {
		name : "Alert",
		image : _image
	}
		
	var _messageData = [
		{
			speaker : _customSpeaker,
			message : _message,
		}
	]
	
	global.textboxManager.CreateDialogue(_messageData, method(undefined, game_pause), method(undefined, game_unpause));
}