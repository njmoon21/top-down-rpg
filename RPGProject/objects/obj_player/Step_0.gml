// The step event runs every frame
// Movement keys declared in the "Create" event
var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

x_speed = (right_key - left_key) * move_speed;
y_speed = (down_key - up_key) * move_speed;

// Collisions
if place_meeting(x + x_speed, y, obj_wall) == true{
	x_speed = 0;	
}
if place_meeting(x, y + y_speed, obj_wall) == true{
	y_speed = 0;
}

x += x_speed;
y += y_speed;