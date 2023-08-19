if (place_meeting(x, y-2, obj_player)) {
	instance_destroy()
}
if (place_meeting(x, y+2, obj_player)) {
	score += 1;
	instance_destroy()
}