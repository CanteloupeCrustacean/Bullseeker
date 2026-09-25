// Turn the player 90 degrees
direction += 90;

// Keep the direction between -90 and 180
if direction > 180
{
    direction -= 360;
}

// Rotate the player sprite
image_angle = direction;