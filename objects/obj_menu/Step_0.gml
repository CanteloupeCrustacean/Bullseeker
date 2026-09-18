if (keyboard_check_pressed(vk_up))
{
    menu_option -= 1;
}

if (keyboard_check_pressed(vk_down))
{
    menu_option += 1;
}

if (menu_option < 0)
{
    menu_option = array_length(menu_items) - 1;
}

if (menu_option >= array_length(menu_items))
{
    menu_option = 0;
}

if (keyboard_check_pressed(ord("X")))
{
    room_goto_next()
}