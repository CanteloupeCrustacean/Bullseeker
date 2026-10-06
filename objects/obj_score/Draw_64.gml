// ========================================
// BOTTOM SCOREBOARD
// ========================================

// Get screen size
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Scoreboard size
var board_height = 90;

// Position
var board_x = 0;
var board_y = gui_h - board_height;
var board_width = gui_w;


// ========================================
// BLACK BACKGROUND
// ========================================

draw_set_color(c_black);

draw_rectangle(
    board_x,
    board_y,
    board_x + board_width,
    board_y + board_height,
    true
);


// ========================================
// WHITE BORDER
// ========================================

draw_set_color(c_black);

draw_rectangle(
    board_x,
    board_y,
    board_x + board_width,
    board_y + board_height,
    false
);


// ========================================
// SCOREBOARD TEXT
// ========================================

draw_set_color(c_white);

draw_text(
    board_x + 80,
    board_y + 35,
    "PLAYER"
);

draw_text(
    board_x + gui_w / 2 - 100,
    board_y + 35,
    "SCORE: " + string_format(global.score, 6, 0)
);

draw_text(
    board_x + gui_w - 200,
    board_y + 35,
    "THROWS: " + string_format(global.throws, 2, 0)
);


// ========================================
// KEY COUNTER
// ========================================

if (global.keys > 0)
{
    draw_text(
        board_x + gui_w - 400,
        board_y + 35,
        "KEYS: " + string(global.keys) + "/" + string(global.total_keys)
    );
}

// Reset color
draw_set_color(c_white);