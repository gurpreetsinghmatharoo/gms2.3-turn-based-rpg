/// @description 
var _inst = battlePlayer.instance;

DrawImage(_inst.states.idle.right);

DrawBar(_inst.GetHP(), _inst.GetMaxHP(),
	"HP", 0.9, 0.1, c_green, c_maroon);

DrawBar(_inst.xp - _inst.baseLevelXP, _inst.nextLevelXP - _inst.baseLevelXP,
	"LEVEL " + string(_inst.level), 0.8, 0.1, c_teal, c_blue);