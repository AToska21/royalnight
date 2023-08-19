//var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
//var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
//move_and_collide(_xinput * movement_speed, _yinput * movement_speed, obj_block, 4, 0, 0, movement_speed, movement_speed);
move_wrap(true, true, sprite_width);
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;
if (place_meeting(x, y+2, obj_blocktop))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;
move_and_collide(move_x, move_y, obj_blocktop);

if (move_x != 0) image_xscale = sign(move_x);
if (place_meeting(x, y+2, obj_platformdeath))
{
	room_goto(rm_death);
}
if (keyboard_check_pressed(vk_shift)) {
	move_speed /= 2;
}
if (keyboard_check_released(vk_shift)) {
	move_speed *= 2;
}
if (keyboard_check_pressed(vk_control)) {
	move_speed *= 2;
}
if (keyboard_check_released(vk_control)) {
	move_speed /= 2;
}