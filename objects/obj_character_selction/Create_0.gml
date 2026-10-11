// Get the room's width and height.
screen_w = room_width;
screen_h = room_height;

// Character box size.
box_width = 250;
box_height = 400;

// Space between each box.
box_gap = 30;

// Calculate the total width of all 4 boxes.
var total_width = (box_width * 4) + (box_gap * 3);

// Center the boxes horizontally.
box_start_x = (screen_w - total_width) / 2;

// Position the boxes vertically.
box_start_y = 170;

// No character selected yet.
selected_character = 0;

// Replace these with your actual sprite names.
character_sprites = [
    spr_character1,
    spr_character2,
    spr_character3,
    spr_character4
];
