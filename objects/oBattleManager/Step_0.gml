/// @description 
// Vars
var _battlePlayer = listOfPlayers[| activeTurn];

// Choosing
if (choosing) {
	// Select action
	if (!is_struct(selectedAction)) {
		// Set text
		if (instance_exists(oBattleMessageBox)) {
			if (_battlePlayer.isAI) oBattleMessageBox.text = "Waiting for enemy";
			else oBattleMessageBox.text = "Select an attack";
		}
		
		// Get action
		var _action = _battlePlayer.SelectAction();
		
		if (is_struct(_action)) {
			selectedAction = _action;
		}
	}
	// Select opponent
	else {
		// Set text
		if (instance_exists(oBattleMessageBox)) {
			if (_battlePlayer.isAI) oBattleMessageBox.text = "Waiting for enemy";
			else oBattleMessageBox.text = "Select an opponent";
		}
		
		// Get opponent
		var _opponent = _battlePlayer.SelectOpponent(listOfPlayers);
		
		if (is_struct(_opponent)) {
			selectedOpponent = _opponent;
		
			// Initiate
			selectedAction.Initiate(_battlePlayer, selectedOpponent);
			
			// Not choosing anymore
			choosing = false;
			
			// Set text
			if (instance_exists(oBattleMessageBox)) {
				if (_battlePlayer.isAI) oBattleMessageBox.text = _battlePlayer.instance.name + " used ";
				else oBattleMessageBox.text = "You used ";
				
				oBattleMessageBox.text += selectedAction.name;
			}
		}
	}
}
// Executing
else {
	// Done
	if (layer_sequence_is_finished(selectedAction.sequenceElement)) {
		// Remove element
		layer_sequence_destroy(selectedAction.sequenceElement);
		
		// Next turn
		activeTurn ++;
		
		if (activeTurn >= ds_list_size(listOfPlayers)) {
			activeTurn = 0;
		}
		
		// Reset vars
		choosing = true;
		selectedAction = -1;
		selectedOpponent = -1;
		
		// Check if over
		CheckOver();
	}
}