function BattlePlayer (_instance, _boxInstance) constructor {
	instance = _instance;
	boxInstance = _boxInstance;
	
	Draw = function () {
		var _sprite = instance.states.idle.left;
		if (instance.object_index == oPlayer) _sprite = instance.states.idle.right;
		
		if (instance_exists(boxInstance)) boxInstance.DrawImage(_sprite);
	}
}

function BattlePlayerAI (_name, _instances, _boxInstance) : BattlePlayer (_name, _instances, _boxInstance) constructor {
	
}