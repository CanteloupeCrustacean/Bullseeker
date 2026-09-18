draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var center_x = display_get_gui_width() / 2;
var center_y = display_get_gui_height() / 2;

// Title
draw_set_color(c_white);
draw_text(center_x, center_y - 150, "BullSeeker");

// Menu buttons
for (var i = 0; i < array_length(menu_items); i++)
{
    var button_y = center_y - 30 + (i * 50);

    if (i == menu_option)
    {
        draw_set_color(c_navy);
        draw_text(center_x, button_y, "> " + menu_items[i]);
    }
    else
    {
        draw_set_color(c_navy);
        draw_text(center_x, button_y, menu_items[i]);
    }
}


