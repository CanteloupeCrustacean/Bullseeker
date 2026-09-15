// Find the button in the room
var button = instance_find(Obj_button, 0);

// If the button has been pressed...
if (button != noone && button.pressed)
{
    // Open the door
    open = true;

    // Change the door to the green sprite
    sprite_index = spr_door_Open;
}