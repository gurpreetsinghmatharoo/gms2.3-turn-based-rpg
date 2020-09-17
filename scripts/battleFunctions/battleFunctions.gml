function battle_effect () {
	with (oBattleManager) {
		var _battlePlayer = listOfPlayers[| activeTurn];
		
		// Effect
		selectedAction.Effect(_battlePlayer.instance, selectedOpponent.instance);
		
		// Add XP for main player
		if (activeTurn == 0) {
			xpFinal += (selectedOpponent.instance.level * 10) * random_range(0.9, 1.3);
		}
	}
}

function battle_appear () {
	layer_set_visible(global.seqLayer, true);
}

function battle_disappear () {
	layer_set_visible(global.seqLayer, false);
}