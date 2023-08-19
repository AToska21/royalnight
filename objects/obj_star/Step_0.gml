if (place_meeting(x, y-2, obj_player)) {
	score += 1;
	sh_play_sound(0);
	instance_destroy()
}
if (place_meeting(x, y+2, obj_player)) {
	score += 1;
	instance_destroy()
	sh_play_sound(0);
}
if (place_meeting(x+2, y, obj_player)) {
	score += 1;
	sh_play_sound(0);
	instance_destroy()
}
if (place_meeting(x-2, y, obj_player)) {
	score += 1;
	sh_play_sound(0);
	instance_destroy()
}