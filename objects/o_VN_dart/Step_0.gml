
/// =====================================
/// AIMING
/// =====================================

// Start aiming when the player clicks.
// The dart can be aimed even when it is stuck.
if (mouse_check_button_pressed(mb_left))
{
    aiming = true;
}


/// =====================================
/// WHILE AIMING
/// =====================================

if (aiming)
{
    // Calculate the distance between the mouse and dart.
    throw_power = point_distance(
        x, y,
        mouse_x, mouse_y
    ) * power_multiplier;

    // Do not let the throw power exceed the maximum.
    throw_power = min(throw_power, max_power);

    // Release the mouse button to throw.
    if (mouse_check_button_released(mb_left))
    {
        // Find the direction away from the mouse.
        var dir = point_direction(
            x, y,
            mouse_x, mouse_y
        );

        // Give the dart its new speed.
        hsp = lengthdir_x(throw_power, dir);
        vsp = lengthdir_y(throw_power, dir);

        // The dart is flying again.
        flying = true;

        // The dart is no longer stuck.
        stuck = false;

        // Stop aiming until the next click.
        aiming = false;

        // Add 1 to the throw counter.
        global.throws += 1;

        // Add 150 points to the score.
        global.score += 150;
    }
}


/// =====================================
/// DART MOVEMENT
/// =====================================

if (flying)
{
    // Normal movement speed.
    var current_slowdown = 1;

    // Slow down the dart while the player aims.
    if (aiming)
    {
        current_slowdown = aim_slowdown;
    }

    // Move the dart.
    x += hsp * dart_slow * current_slowdown;
    y += vsp * dart_slow * current_slowdown;

    // Face the direction the dart is travelling.
    image_angle = point_direction(0, 0, hsp, vsp);


    /// =====================================
    /// CHECK THE NORMAL COLLISION WALLS
    /// =====================================

    // Check the Collisions tilemap.
    var tile = tilemap_get_at_pixel(
        global.terrain,
        x,
        y
    );

    // If the dart hits a normal collision tile,
    // restart the room as before.
    if (tile != 0)
    {
        room_restart();
    }


    /// =====================================
    /// CHECK THE STICKABLE WALLS
    /// =====================================

    // Check the Walls tilemap at the dart's position.
    var wall_tile = tilemap_get_at_pixel(
        global.stick_walls,
        x,
        y
    );

    // If the dart touches a stickable wall...
    if (wall_tile != 0)
    {
        // Stop the dart at its current position.
        flying = false;

        // Remember that the dart is stuck.
        stuck = true;

        // Stop all movement.
        hsp = 0;
        vsp = 0;

        // Do NOT change image_angle here.
        // It keeps the angle from when the dart hit.
    }
}
