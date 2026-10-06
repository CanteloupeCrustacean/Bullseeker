// =====================================
// AIMING
// =====================================

if (mouse_check_button_pressed(mb_left))
{
    aiming = true;
}


// =====================================
// WHILE AIMING
// =====================================

if (aiming)
{
    // Calculate how far the mouse is
    // from the dart

    throw_power = point_distance(
        x, y,
        mouse_x, mouse_y
    ) * power_multiplier;

    // Don't allow more than max power

    throw_power = min(
        throw_power,
        max_power
    );


    // Release mouse = throw

    if (mouse_check_button_released(mb_left))
    {
        // Find direction AWAY from mouse
        var dir = point_direction(
            x,
			y,
			mouse_x,
			mouse_y
        );

        // Give the dart its speed

        hsp = lengthdir_x(
            throw_power,
            dir
        );

        vsp = lengthdir_y(
            throw_power,
            dir
        );

        // Dart is flying again

        flying = true;

        // Stop aiming

        aiming = false;
		
		// Adds 1 to the throw counter
			global.throws += 1;
			
	    // Adds 1 to the throw counter
			global.score += 150;
    }
}


// =====================================
// DART MOVEMENT
// =====================================

if (flying)
{
    var current_slowdown = 1;

    // Slow the dart while aiming
    if (aiming)
    {
        current_slowdown = aim_slowdown;
    }

    x += hsp * dart_slow * current_slowdown;
    y += vsp * dart_slow * current_slowdown;

    image_angle = point_direction(
        0,
        0,
        hsp,
        vsp
    );
}


// Check for collision with the tilemap

var tile = tilemap_get_at_pixel(
    global.terrain,
    x,
    y
);

if (tile != 0)
{
    room_restart();
}