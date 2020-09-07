function BattlePlayer (_instance, _boxInstance) constructor {
	instance = _instance;
	boxInstance = _boxInstance;
	
	/// @func	Input
	/// @desc	Get selected action
	Input = function () {
		with (oBattleActionBox) {
			if (isSelected && is_struct(action)) return action;
		}
		
		return -1;
	}
	
	/// @func	Draw
	Draw = function () {
		var _sprite = instance.states.idle.left;
		if (instance.object_index == oPlayer) _sprite = instance.states.idle.right;
		
		if (instance_exists(boxInstance)) {
			// Image
			boxInstance.DrawImage(_sprite);
			
			// Health
			boxInstance.DrawBar(instance.GetHP(), instance.GetMaxHP(), "HP", 0.9, 0.1, c_green, c_maroon);
		}
	}
}

function BattlePlayerAI (_name, _instances, _boxInstance) : BattlePlayer (_name, _instances, _boxInstance) constructor {
	/// @func	Input
	/// @desc	Select random action from instance
	Input = function () {
		if (irandom(100) < 3) {
			var _len = array_length(instance.actions);
			var _index = irandom(_len - 1);
			
			return instance.actions[_index];
		}
		
		return -1;
	}
}