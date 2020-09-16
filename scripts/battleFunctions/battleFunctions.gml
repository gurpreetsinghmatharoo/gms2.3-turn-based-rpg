function battle_effect () {
	with (oBattleManager) {
		var _battlePlayer = listOfPlayers[| activeTurn];
		
		// Effect
		selectedAction.Effect(_battlePlayer.instance, selectedOpponent.instance);
	}
}

function battle_appear () {
	layer_set_visible(global.seqLayer, true);
}

function battle_disappear () {
	layer_set_visible(global.seqLayer, false);
}