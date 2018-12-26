dssleep_init();

debug = false;
tightness = 0.9; // Basically a multiplier for the calculated frame time. If FPS fluctuates a lot, or is constantly a bit under full FPS, make it less tight.
grace_us = 1000; // Grace in microseconds. Gets deducted from the suspend time, so the game has time to prepare for the upcoming step (same as tightness, but static)

instance_create_depth(0, 0, 50000, dscpu_obj_begin);
instance_create_depth(0, 0, -50000, dscpu_obj_end);

