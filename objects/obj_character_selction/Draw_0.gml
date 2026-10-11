// Draw the black background across the whole room.
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// Center the title.
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_text(room_width / 2, 60, "SELECT YOUR CHARACTER");

// Draw all four character boxes.
for (var i = 0; i < 4; i++)
{
    // Calculate the position of this box.
    var box_x = box_start_x + i * (box_width + box_gap);
    var box_y = box_start_y;

    // Check if the mouse is hovering over this box.
    var hovering = point_in_rectangle(
        mouse_x, mouse_y,
        box_x, box_y,
        box_x + box_width,
        box_y + box_height
    );

    // Make the box light gray when hovered over.
    if (hovering)
    {
        draw_set_color(c_ltgray);
    }
    else
    {
        draw_set_color(c_black);
    }

    // Draw the box background.
    draw_rectangle(
        box_x, box_y,
        box_x + box_width,
        box_y + box_height,
        false
    );

    // Draw a white border around the box.
    draw_set_color(c_white);
    draw_rectangle(
        box_x, box_y,
        box_x + box_width,
        box_y + box_height,
        true
    );

    // Draw the character sprite in the middle of the box.
    draw_sprite(
        character_sprites[i],
        0,
        box_x + box_width / 2,
        box_y + 110
    );

    // Show which character is selected.
    if (selected_character == i + 1)
    {
        draw_set_color(c_yellow);
        draw_text(
            box_x + box_width / 2,
            box_y + box_height - 35,
            "SELECTED!"
        );
    }
}

// Display the instruction after a character is selected.
if (selected_character > 0)
{
    draw_set_color(c_white);
    // Center the instruction near the bottom.
    draw_text(room_width / 2, 650, "Press X to continue");
}

// Reset text alignment.
draw_set_halign(fa_left);

// Reset drawing color.
draw_set_color(c_white);