/// @description 
// Over
if (over) {
	// Outro transition element
	if (layer_sequence_is_finished(outroSeq)) {
		layer_sequence_destroy(outroSeq);
		
		instance_destroy();
		battle_appear();
	}
	
	exit;
}
// Still playing
else {
	// Intro transition element
	if (layer_sequence_is_finished(introSeq)) {
		layer_sequence_destroy(introSeq);
	}
}

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
		// Using an item (player only)
		else if (activeTurn == 0) {
			// Item menu not open
			if (!itemMenuOpen) {
				// Create pause sequence
				if (instance_exists(oBattleItemButton) && oBattleItemButton.isSelected) {
					// Deactivate all existing GUI boxes
					instance_deactivate_object(oGUIBoxParent);
					
					// Create menu
					itemMenuSeqElm = layer_sequence_create(global.seqLayer2, 0, 0, seqPause);
					itemMenuOpen = true;
				}
				// Destroy pause sequence
				else if (layer_sequence_exists(global.seqLayer2, itemMenuSeqElm)) {
					layer_sequence_destroy(itemMenuSeqElm);
					
					// Activate all deactivated GUI boxes
					instance_activate_object(oGUIBoxParent);
					
					// Skip player's turn
					activeTurn ++;
				}
			}
			// Item menu is open
			else {
				// Close
				if (keyboard_check_pressed(vk_escape)) {
					itemMenuOpen = false;
					layer_sequence_destroy(itemMenuSeqElm);
					instance_activate_object(oGUIBoxParent);
				}
			}
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
		
		// Applies to user?
		if (selectedAction.appliesToUser) {
			_opponent = _battlePlayer;
		}
		
		// Found opponent
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