function BattlePlayer (_instance, _boxInstance) constructor {
	instance = _instance;
	boxInstance = _boxInstance;
	
	Draw = function () {
		var _sprite = instance.states.idle.left;
		if (instance.object_index == oPlayer) _sprite = instance.states.idle.right;
		
		if (instance_exists(boxInstance)) {
			// Image
			boxInstance.DrawImage(_sprite);
			
			// Health
			boxInstance.DrawBar(instance.GetHP(), instance.GetMaxHP(), "HP", 0.9, 0.1, c_yellow, c_red);
		}
	}
}

function BattlePlayerAI (_name, _instances, _boxInstance) : BattlePlayer (_name, _instances, _boxInstance) constructor {
	
}