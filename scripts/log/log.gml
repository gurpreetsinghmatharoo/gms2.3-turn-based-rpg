/// @arg args
function log() {

	var date = date_current_datetime();
	var time = string(date_get_hour(date)) + ":" + string(date_get_minute(date)) + ":" + string(current_time);
	var str = "[" + time + "]  ";

	for (var a=0; a<argument_count; a++) {
		str += string(argument[a]);
	}

	show_debug_message(str);


}
