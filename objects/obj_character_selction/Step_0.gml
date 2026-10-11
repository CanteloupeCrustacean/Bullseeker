// Check each of the four character boxes.
for (var i = 0; i < 4; i++)
{
    // Calculate this box's position.
    var box_x = box_start_x + i * (box_width + box_gap);
    var box_y = box_start_y;

    // Check if the mouse is inside this box.
    if (point_in_rectangle(
        mouse_x, mouse_y,
        box_x, box_y,
        box_x + box_width,
        box_y + box_height
    ))
    {
        // If the player clicks, select this character.
        if (mouse_check_button_pressed(mb_left))
        {
            selected_character = i + 1;
        }
    }
}

// Only continue if a character has been selected.
if (selected_character > 0)
{
    // Check if the player presses X.
    if (keyboard_check_pressed(ord("X")))
    {
        // Go to Level 1.
        room_goto_next();
    }
}