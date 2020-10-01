/// @func	state_set
/// @arg	state
function state_set (_state) {
	if (state != _state) {
		state = _state;
		image_index = 0;
	}
}

/// @func	show_item_dialog
/// @arg	itemID
function show_item_dialog (_itemID) {
	var _itemData = global.items[_itemID];
		
	var _customSpeaker = {
		name : _itemData.name,
		image : _itemData.icon
	}
		
	var _messageData = [
		{
			speaker : _customSpeaker,
			message : "You got a " + _itemData.name + "!"
		}
	]
	
	global.textboxManager.CreateDialogue(_messageData, method(undefined, game_pause), method(undefined, game_unpause));
}