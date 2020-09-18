/// @description 
if (instance_exists(oRoomTransition)) exit;

// Start transition
with (instance_create_layer(0, 0, "Instances", oRoomTransition)) {
	targetRoom = other.targetRoom;
	targetSpawner = other.targetSpawner;
}