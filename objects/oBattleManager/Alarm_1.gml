/// @description Adding XP to player
var _player = listOfPlayers[| 0];
var _xpFinal = round(xpFinal);

if (_player.instance.xp < _xpFinal) {
	_player.instance.xp += 0.5;
	
	alarm[1] = 1;
}
else {
	_player.instance.xp = round(_player.instance.xp);
	
	if (levelUp) {
		var _text = level_up_stats(_player.instance);
		oBattleMessageBox.text = _text;
		
		alarm[0] = 180;
	}
	else {
		alarm[0] = 50;
	}
}