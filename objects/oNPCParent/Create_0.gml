/// @description 

// Inherit the parent event
event_inherited();

// Pathfinding
path = path_add();
pathNextPoint = 0;

// Face direction
moveDirection = faceDirection;

// Random movement
moveTimer = 0;
minMoveTime = 100;
maxMoveTime = 200;