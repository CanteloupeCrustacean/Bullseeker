// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//TO DO LIST:
//	- Figure out how to implement diagonal movement.
//	- Fix downward movement being slower than other directions
//	- Adjust dart speed to feel good.
//	- Fix dart looking blurry while moving.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

//Directional keys for redirecting dart
var left_key = keyboard_check_pressed(vk_left)
var right_key = keyboard_check_pressed(vk_right)
var up_key = keyboard_check_pressed(vk_up)
var down_key = keyboard_check_pressed(vk_down)

//Controls
if left_key
{
	direction = 180
	image_angle = 180
}
if right_key 
{
	direction = 0
	image_angle = 0
}
if up_key
{
	direction = 90
	image_angle = 90
}
if down_key
{
	direction = -90
	image_angle = -90
}

//Direction to speed
//(Diagonal movement needs to be added)
switch (direction)
{
	case(180):
	{
		x -= speed
		break
	}
	case(0):
	{
		x += speed
		break
	}
	case(90):
	{
		y -= speed
		break
	}
	case(-90):
	{
		y += speed
		//Note: Moves slower going down (I'm not sure why).
		break
	}
}

//Collision with terrain
if place_meeting(x,y,global.terrain)
{
	instance_destroy()
}
