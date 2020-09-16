function battle_effect () {
	with (oBattleManager) {
		var _battlePlayer = listOfPlayers[| activeTurn];
		
		// Effect
		selectedAction.Effect(_battlePlayer.instance, selectedOpponent.instance);
	}
}

