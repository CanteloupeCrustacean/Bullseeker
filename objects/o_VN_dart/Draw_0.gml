// Draw the dart normally

draw_self();

// Show the aiming arrow

if (aiming)
{
    // Find the throw direction

var dir = point_direction(
    x, y,
    mouse_x, mouse_y
);

    // Arrow length depends on power

    var arrow_length = throw_power * 4;

    // Find the end of the arrow

    var end_x = x + lengthdir_x(
        arrow_length, dir
    );

    var end_y = y + lengthdir_y(
        arrow_length, dir
    );

    // Draw the arrow line

    draw_set_color(c_yellow);

    draw_line_width(
        x, y,
        end_x, end_y,
        3
    );

    // Draw the arrowhead

    var head_size = 8;

    draw_line_width(
        end_x, end_y,
        end_x + lengthdir_x(
            head_size, dir + 150
        ),
        end_y + lengthdir_y(
            head_size, dir + 150
        ),
        3
    );

    draw_line_width(
        end_x, end_y,
        end_x + lengthdir_x(
            head_size, dir - 150
        ),
        end_y + lengthdir_y(
            head_size, dir - 150
        ),
        3
    );

    draw_set_color(c_white);
}