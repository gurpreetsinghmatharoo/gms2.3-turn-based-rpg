function battle_effect () {
	with (oBattleManager) {
		// Effect
		selectedAction.Effect(_battlePlayer.instance, selectedOpponent.instance);
	}
}