function Item (_name, _icon) constructor {
	name = _name;
	icon = _icon;
	forBattleUse = false;
	
	/// @func	Effect
	/// @arg	player
	Effect = function (player) {};
}

function HealingItem (_name, _icon, _healPower) : Item (_name, _icon) constructor {
	healPower = _healPower;
	
	Effect = function (player) {
		// Is the player healable?
		if (player.hp < player.maxHP) {
			player.hp += healPower;
			
			return true;
		}
		
		return false;
	}
}

function AttackIncrease (_name, _icon, _increase, _forBattle) : Item (_name, _icon) constructor {
	increase = _increase;
	forBattleUse = _forBattle;
	
	Effect = function (player) {
		return true;
	}
}

function DefenseIncrease (_name, _icon, _increase, _forBattle) : Item (_name, _icon) constructor {
	increase = _increase;
	forBattleUse = _forBattle;
	
	Effect = function (player) {
		return true;
	}
}