/// @description 

// Inherit the parent event
event_inherited();

// Action box ID
actionBoxID = global.actionBoxID;
global.actionBoxID ++;

// Get player action
action = -1;
var _actions = oPlayer.actions;

if (actionBoxID < array_length(_actions)) {
	action = _actions[actionBoxID];
}

// Vars
isSelected = false;