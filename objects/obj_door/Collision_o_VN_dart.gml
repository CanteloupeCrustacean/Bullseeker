if (global.keys >= global.total_keys)
{
    // Player has all the keys
    // Open the door

    instance_destroy();
}
else
{
    // Player doesn't have all the keys
    // Restart the level
    room_restart();
}