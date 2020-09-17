
function to_cell_coords (val) {
	return floor(val / CELLSIZE);
}

function to_room_coords (val) {
	return val * CELLSIZE;
}

function get_4_directional (dir) {
	return round(dir / 90) mod 4;
}

function xp_for_next_level(level) {
	static _baseXP = 100;
	
	return (_baseXP * power(level, 1.5));
}

function level_up_stats (entity) {
	// Increase value for stats
	var _hpIncrease = 5;
	var _attackIncrease = 5;
	var _defenseIncrease = 5;
	
	// Select the main increase (random)
	switch (irandom_range(0, 2)) {
		case 0:
			_hpIncrease = 10;
		break;
		
		case 1:
			_attackIncrease = 10;
		break;
		
		case 2:
			_defenseIncrease = 10;
		break;
	}
	
	// Increase
	entity.maxHP += _hpIncrease;
	entity.hp = entity.maxHP;
	entity.attack += _attackIncrease;
	entity.defense += _defenseIncrease;
	
	// Return string
	return "HP  +" + string(_hpIncrease) + "\nATTACK  +" + string(_attackIncrease) + "\nDEFENSE  +" + string(_defenseIncrease);
}