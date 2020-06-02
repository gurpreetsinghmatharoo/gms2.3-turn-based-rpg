/// @description 
// Define input variables
global.inputLeft	= keyboard_check(ord("A"));
global.inputRight	= keyboard_check(ord("D"));
global.inputUp		= keyboard_check(ord("W"));
global.inputDown	= keyboard_check(ord("S"));
	
global.inputAxisX	= global.inputRight - global.inputLeft;
global.inputAxisY	= global.inputDown	- global.inputUp;