// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_set (_state) {
	if (state != _state) {
		state = _state;
		image_index = 0;
	}
}