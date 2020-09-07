/// @description 
// Vars
var _battlePlayer = listOfPlayers[| activeTurn];

log("Turn: ", activeTurn);
log("Choosing: ", choosing);
log("activeAction: ", activeAction);
log("selectedOpponent: ", selectedOpponent);

// Choosing
if (choosing) {
	// Select action
	if (!is_struct(activeAction)) {
		var _action = _battlePlayer.SelectAction();
		
		// Got action
		if (is_struct(_action)) {
			activeAction = _action;
		
			// Initiate
			activeAction.Initiate();
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
	if (activeAction.done) {
		// Effect
		activeAction.Effect(_battlePlayer, selectedOpponent);
		
		// Next turn
		activeTurn ++;
		
		if (activeTurn >= ds_list_size(listOfPlayers)) {
			activeTurn = 0;
		}
	}
}