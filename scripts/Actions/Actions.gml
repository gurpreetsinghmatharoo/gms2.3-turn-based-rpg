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
		var _x = 0;
		var _y = 0;
		
		if (appliesToOpponent) {
			_x = opponent.boxInstance.x + opponent.boxInstance.sprite_width / 2;
			_y = opponent.boxInstance.y + opponent.boxInstance.sprite_height / 2;
		}
		else if (appliesToUser) {
			_x = user.boxInstance.x + opponent.boxInstance.sprite_width / 2;
			_y = user.boxInstance.y + opponent.boxInstance.sprite_height / 2;
		}
		
		sequenceElement = layer_sequence_create(global.seqLayer2, _x, _y, sequence);
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
		opponent.Hurt(15, user);
	}
}

function Kick () : Action () constructor {
	name = "Kick";
	sequence = seqActionKick;
	
	Effect = function (user, opponent) {
		opponent.Hurt(20, user);
	}
}

function Heal () : Action () constructor {
	name = "Heal";
	sequence = seqActionHeal;
	appliesToUser = true;
	
	Effect = function (user, opponent) {
		user.hp += 10;
	}
}

function Slap () : Action () constructor {
	name = "Slap";
	sequence = seqActionSlap;
	
	Effect = function (user, opponent) {
		opponent.Hurt(25, user);
	}
}