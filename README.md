# DS CPU Mercy

A simple plugin to keep your game from eating all the CPU resources. Big effect on Linux builds.

This extension calculates the required frame time, and calculates how much time it took to process the current frame.
The difference is the amount the thread should wait (until the next frame). On my windows machine on the example file
it dropped CPU usage from 14% (1 core) to 0.9%. The example file does a random amount of calculations to make the FPS
 fluctuate - in an actual empty room without those calculations the difference is much bigger.

On my real game server, it dropped usage from 100% to 10-14%.

Please note that profiling will not work right with this extension enabled (the waiting time is also shown in the 
profiler, giving weird numbers).

### Version support
For GMS2.2 and below, use 1.3.2.
For GMS2.3, GM-LTS and GM2024, use 1.4.0

### Supported systems
Windows and Linux. C++ source is included.

### Example usage

```gml
dscpu_init() //Start the system
dscpu_active() //Check if its active
dscpu_destroy() //Stop the system
dscpu_set_debug() //Toggle debug information
dscpu_set_grace() //A small grace period that always gets deducted from the calculated time
dscpu_set_tightness() //Simple multiplier on the calculated time. Usually 0.9. This is to keep the few "clock ticks" before the next frame free from waiting, so you won't have 58 - 59 fps instead of a solid 60. The higher the better!
```

### Screenshot
![Screenshot of DSCPU Mercy in action](https://github.com/dukesoft/DSCPU-Mercy/raw/master/screenshot.png)
