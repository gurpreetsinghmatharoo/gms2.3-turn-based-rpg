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

function AttackIncrease (_name, _icon, _attackIncrease, _permanent) : Item (_name, _icon) constructor {
	attackIncrease = _attackIncrease;
	permanent = _permanent;
	
	Effect = function (player) {
		
	}
}

function DefenseIncrease (_name, _icon, _defenseIncrease, _permanent) : Item (_name, _icon) constructor {
	attackIncrease = _attackIncrease;
	permanent = _permanent;
	
	Effect = function (player) {
		
	}
}