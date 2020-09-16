/// @description 
event_inherited();

DrawImage(battlePlayer.instance.states.idle.left);

DrawBar(battlePlayer.instance.GetHP(), battlePlayer.instance.GetMaxHP(),
	"HP", 0.9, 0.1, c_green, c_maroon);

DrawBar(battlePlayer.instance.xp, xp_for_next_level(battlePlayer.instance.level),
	"LEVEL " + string(battlePlayer.instance.level), 0.76, 0.1, c_yellow, c_orange);