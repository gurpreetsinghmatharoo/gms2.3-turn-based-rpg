/// @description 
// Heading
var _headingHeight = 45;

draw_set_halign(fa_center);

draw_set_font(ftStats);
draw_text(x + sprite_width / 2, y, "PLAYER");

draw_set_halign(fa_left);

// Stat strings
var _strLeft = "";
var _strRight = "";

if (instance_exists(oPlayer)) {
	// Left-side (names)
	_strLeft += "HP\n";
	_strLeft += "ATTACK\n";
	_strLeft += "DEFENSE\n";
	_strLeft += "LEVEL\n";
	_strLeft += "XP\n";
	
	// Right-side (values)
	_strRight += string(oPlayer.GetHP()) + " / " + 
		string(oPlayer.GetMaxHP()) + "\n";
	_strRight += string(oPlayer.GetAttack()) + " / " + 
		string(oPlayer.GetMaxAttack()) + "\n";
	_strRight += string(oPlayer.GetDefense()) + " / " + 
		string(oPlayer.GetMaxDefense()) + "\n";
	
	_strRight += string(oPlayer.level) + "\n";
	_strRight += string(oPlayer.xp) + "\n";
}

// Draw left string
var _x = x;
var _y = y + _headingHeight;
draw_text(_x, _y, _strLeft);

// Draw right string
draw_set_halign(fa_right);
draw_text(_x + sprite_width, _y, _strRight);
draw_set_halign(fa_left);