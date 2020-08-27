/// @description 
// Movement input
global.inputLeft	= keyboard_check(ord("A"));
global.inputRight	= keyboard_check(ord("D"));
global.inputUp		= keyboard_check(ord("W"));
global.inputDown	= keyboard_check(ord("S"));
	
global.inputAxisX	= global.inputRight - global.inputLeft;
global.inputAxisY	= global.inputDown	- global.inputUp;

// Other input
global.inputSpace			= keyboard_check(vk_space);
global.inputSpacePressed	= keyboard_check_pressed(vk_space);