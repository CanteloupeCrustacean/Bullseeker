// Is the dart flying?
flying = false;

// Is the player aiming?
aiming = false;

// Dart movement
hsp = 0;
vsp = 0;

// Throw power
throw_power = 0;
max_power = 15;

// How much power the mouse pull gives
power_multiplier = 0.15;

// How slow the dart moves in flight
dart_slow = 0.15;

// How much the arrow keys steer
steer_power = 0.25;

// The SlowMotion speed
// 0.10  Very slow
// 0.25  Slow
// 0.50  Half speed
// 0.75  Slightly slow
aim_slowdown = 0.25;


global.terrain = layer_tilemap_get_id("Collisions")