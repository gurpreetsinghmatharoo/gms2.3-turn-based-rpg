function Action () constructor {
	// Properties
	name = "";
	
	// Variables
	done = false;
	
	/// @func	Initiate
	Initiate = function () {
		done = true;
	}
	
	/// @func	Effect
	/// @arg	user
	/// @arg	opponent
	Effect = function (user, opponent) {}
}

function Punch () : Action () constructor {
	name = "Punch";
	
	Effect = function (user, opponent) {
		opponent.hp -= 20;
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