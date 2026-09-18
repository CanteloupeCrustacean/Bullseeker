// Move the obstacle
y += move_speed * direction;


// If we have moved too far DOWN
if (y >= start_y + move_distance)
{
    // Change direction to UP
    direction = -1;
}


// If we have moved too far UP
if (y <= start_y - move_distance)
{
    // Change direction to DOWN
    direction = 1;
}