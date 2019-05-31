
gravity = 0.5;

friction = 0.2;

jp = 0;

moving = false;

spd_multiplier = 1;

nighthall = false;

//Setting global variables up to detect clicks from inventory button.
//If click is detected by step event, activate specific power-ups.
globalvar broccoli_clicked;
broccoli_clicked = false;
globalvar spork_clicked;
spork_clicked = false;
globalvar box_clicked;
box_clicked = false;
globalvar bear_clicked;
bear_clicked = false;
globalvar remote_clicked;
remote_clicked = false;
globalvar shovel_clicked;
shovel_clicked = false;

global.pillowstarted = false;
globalvar switchdirec;
switchdirec = false;