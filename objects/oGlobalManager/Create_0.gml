/// @description 
alarm[0] = 1;

a = {
	c : 0,
	d : 1
}

b = a;

switch (a) {
	case b:
		log("IT'S WORKING!");
	break;
}