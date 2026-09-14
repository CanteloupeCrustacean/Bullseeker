// Increase the angle every frame.
// This makes the ball spin around the center point.
angle += speed;

// Keep the angle between 0 and 360 degrees.
if (angle >= 360)
{
    angle -= 360;
}


// Move the ball around the center point.
// lengthdir_x() finds the X position around the circle.
// lengthdir_y() finds the Y position around the circle.
x = center_x + lengthdir_x(radius, angle);
y = center_y + lengthdir_y(radius, angle);
