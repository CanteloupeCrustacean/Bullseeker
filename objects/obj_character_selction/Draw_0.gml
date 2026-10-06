for (var i = 0; i < 4; i++)
{
    var slot_x = start_x + i * (slot_width + slot_spacing);

    // Is the mouse over this box?
    var hovering =
        mouse_x >= slot_x &&
        mouse_x <= slot_x + slot_width &&
        mouse_y >= slot_y &&
        mouse_y <= slot_y + slot_height;

    // Change color when mouse is over the box
    if (hovering)
    {
        draw_set_color(make_color_rgb(180, 180, 180));
    }
    else
    {
        draw_set_color(c_black);
    }

    // Draw the box
    draw_rectangle(
        slot_x,
        slot_y,
        slot_x + slot_width,
        slot_y + slot_height,
        false
    );
}

if (confirming)
{
    draw_set_color(c_white);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        room_width / 2,
        100,
        "CONFIRM?"
    );

    draw_text(
        room_width / 2,
        130,
        "Press X to confirm"
    );
}