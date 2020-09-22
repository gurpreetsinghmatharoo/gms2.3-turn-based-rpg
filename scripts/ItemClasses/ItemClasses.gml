function Item () constructor {
	name = "";
	icon = "";
	
	/// @func	Effect
	/// @arg	player
	Effect = function (player) {};
}

function Potion (_healPower) : Item () constructor {
	healPower = _healPower;
	
	Effect = function (player) {
		if (player.hp < player.maxHP) {
			player.hp += healPower;
		}
	}
}

function AttackIncrease (_attackIncrease, _permanent) : Item () constructor {
	attackIncrease = _attackIncrease;
	permanent = _permanent;
	
	Effect = function (player) {
		
	}
}

function DefenseIncrease (_defenseIncrease, _permanent) : Item () constructor {
	attackIncrease = _attackIncrease;
	permanent = _permanent;
	
	Effect = function (player) {
		
	}
}