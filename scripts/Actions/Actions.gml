function Action () constructor {
	// Properties
	name = "";
	sequence = -1;
	
	appliesToUser = false;
	appliesToOpponent = true;
	
	// Variables
	sequenceElement = -1;
	
	/// @func	Initiate
	Initiate = function (user, opponent) {
		var _pos = { x : 0, y : 0 };
		
		if (appliesToOpponent) {
			_pos = to_gui_coords({
				x : opponent.instance.x,
				y : opponent.instance.y
			});
		}
		else if (appliesToUser) {
			_pos = to_gui_coords({
				x : user.instance.x,
				y : user.instance.y
			});
		}
		
		sequenceElement = layer_sequence_create(global.seqLayer, _pos.x, _pos.y, sequence);
	}
	
	/// @func	Effect
	/// @arg	user
	/// @arg	opponent
	Effect = function (user, opponent) {}
}

function Punch () : Action () constructor {
	name = "Punch";
	sequence = seqActionPunch;
	
	Effect = function (user, opponent) {
		opponent.hp -= 10;
	}
}

function Kick () : Action () constructor {
	name = "Kick";
	
	Effect = function (user, opponent) {
		opponent.hp -= 35;
	}
}

function Heal () : Action () constructor {
	name = "Heal";
	
	Effect = function (user, opponent) {
		user.hp += 25;
	}
}

function Slap () : Action () constructor {
	name = "Slap";
	
	Effect = function (user, opponent) {
		opponent.hp -= 8;
	}
}