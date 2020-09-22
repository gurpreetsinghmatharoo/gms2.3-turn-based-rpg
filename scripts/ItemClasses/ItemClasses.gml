function Item (_name, _icon) constructor {
	name = _name;
	icon = _icon;
	
	/// @func	Effect
	/// @arg	player
	Effect = function (player) {};
}

function HealingItem (_name, _icon, _healPower) : Item (_name, _icon) constructor {
	healPower = _healPower;
	
	Effect = function (player) {
		if (player.hp < player.maxHP) {
			player.hp += healPower;
		}
	}
}

function AttackIncrease (_name, _icon, _increase, _permanent) : Item (_name, _icon) constructor {
	increase = _increase;
	permanent = _permanent;
	
	Effect = function (player) {
		
	}
}

function DefenseIncrease (_name, _icon, _increase, _permanent) : Item (_name, _icon) constructor {
	increase = _increase;
	permanent = _permanent;
	
	Effect = function (player) {
		
	}
}