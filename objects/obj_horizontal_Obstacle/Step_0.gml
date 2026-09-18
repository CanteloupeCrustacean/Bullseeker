// Move the obstacle left or right
x += move_speed * direction;


// If we have moved too far RIGHT
if (x >= start_x + move_distance)
{
    // Start moving LEFT
    direction = -1;
}


// If we have moved too far LEFT
if (x <= start_x - move_distance)
{
    // Start moving RIGHT
    direction = 1;
}