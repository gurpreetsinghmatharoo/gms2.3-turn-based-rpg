function get_player_data () {
	var _playerData = {
		hp : oPlayer.hp,
		maxHP : oPlayer.maxHP,
		attack : oPlayer.attack,
		defense : oPlayer.defense,
		level : oPlayer.level,
		xp : oPlayer.xp,
	
		nextLevelXP : oPlayer.nextLevelXP,
		baseLevelXP : oPlayer.baseLevelXP
	}
	
	return _playerData;
}

function set_player_data(_playerData) {
	oPlayer.hp = _playerData.hp;
	oPlayer.maxHP = _playerData.maxHP;
	oPlayer.attack = _playerData.attack;
	oPlayer.defense = _playerData.defense;
	oPlayer.level = _playerData.level;
	oPlayer.xp = _playerData.xp;
	oPlayer.nextLevelXP = _playerData.nextLevelXP;
	oPlayer.baseLevelXP = _playerData.baseLevelXP;
}