/// @description 
// Vars
var _battlePlayer = listOfPlayers[| activeTurn];

log("Turn: ", activeTurn);
log("Choosing: ", choosing);
log("selectedAction: ", selectedAction);
log("selectedOpponent: ", selectedOpponent);

// Choosing
if (choosing) {
	// Select action
	if (!is_struct(selectedAction)) {
		var _action = _battlePlayer.SelectAction();
		
		// Got action
		if (is_struct(_action)) {
			selectedAction = _action;
		
			// Initiate
			selectedAction.Initiate();
		}
	}
	// Select opponent
	else {
		var _opponent = _battlePlayer.SelectOpponent(listOfPlayers);
		
		if (is_struct(_opponent)) {
			selectedOpponent = _opponent;
			
			// Not choosing anymore
			choosing = false;
		}
	}
}
// Executing
else {
	// Done
	if (selectedAction.done) {
		// Effect
		selectedAction.Effect(_battlePlayer.instance, selectedOpponent.instance);
		
		// Next turn
		activeTurn ++;
		
		if (activeTurn >= ds_list_size(listOfPlayers)) {
			activeTurn = 0;
		}
		
		// Reset vars
		choosing = true;
		selectedAction = -1;
		selectedOpponent = -1;
	}
}