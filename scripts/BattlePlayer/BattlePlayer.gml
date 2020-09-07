function BattlePlayer (_instance, _boxInstance) constructor {
	instance = _instance;
	boxInstance = _boxInstance;
	
	/// @func	SelectAction
	/// @desc	Get selected action
	SelectAction = function () {
		with (oBattleActionBox) {
			if (isSelected && is_struct(action)) return action;
		}
		
		return -1;
	}
	
	/// @func	SelectOpponent
	SelectOpponent = function () {
		
		
		return -1;
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