/// @description movement code
var xDirection = keyboard_check(vk_right) - keyboard_check(vk_left);
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, obj_blocktop);
var onTheGroundAgain = place_meeting(x, y + 1, obj_blocktopcorner_right);
var onAWall = place_meeting(x-5, y, obj_inviswall) - place_meeting(x+5, y, obj_inviswall);

mvtLocked = max(mvtLocked - 1, 0)

if (onAWall != 0) ySpeed = min(ySpeed + 1, 5);
else ySpeed++;

if (mvtLocked <= 0) {
	if (xDirection != 0) image_xscale = xDirection;
	xSpeed = xDirection * spd;
	
	if (jump) {
		if (onTheGround) {
			ySpeed = -18;
		}
	
		if (onAWall != 0) {
			ySpeed = -15
			xSpeed = onAWall * spd * 2;
			mvtLocked = 10;
		}
	}
}

if (keyboard_check_pressed(vk_shift)) {
	spd /= 2;
}
if (keyboard_check_released(vk_shift)) {
	spd *= 2;
}
if (keyboard_check_pressed(vk_control)) {
	spd *= 2;
}
if (keyboard_check_released(vk_control)) {
	spd /= 2;
}
if (place_meeting(x, y+2, obj_platformmoon))
{
	room_goto(rm_lvlmoon);
}
if (place_meeting(x, y+2, obj_platformday))
{
	room_goto(rm_lvl1);
}
if (place_meeting(x, y+2, obj_platformdeath)) {
	room_goto(rm_death);
}
if (place_meeting(x, y+2, obj_star))
{
	score += 1;
}
if (place_meeting(x, y-2, obj_player)) {
	score += 1;
}
if (onTheGround) {
	
} else if (onAWall != 0) {
	image_xscale = onAWall;
}

if (onTheGroundAgain) {
	if (debug_mode == true) {
		room_goto(rm_lvlmoon)
	}
}

if (!onTheGround) {
	sprite_index = spr_player_jump;
} else if (xSpeed == 0) {
	sprite_index = spr_player_idle;
} else {
	sprite_index = spr_player_walk;
}


if (place_meeting(x + xSpeed, y, obj_blocktop)) {
	while (!place_meeting(x + sign(xSpeed), y, obj_blocktop)) {
		x += sign(xSpeed)
	}
	
	xSpeed = 0;
}


x += xSpeed;

if (place_meeting(x, y + ySpeed, obj_blocktop)) {
	while (!place_meeting(x, y + sign(ySpeed), obj_blocktop)) {
		y += sign(ySpeed);
	}
	
	ySpeed = 0;
}


y += ySpeed;


