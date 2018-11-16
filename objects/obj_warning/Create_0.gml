/// @description Get variables from script

image_xscale = global.int_width; // get the intital width
_yscale = global.int_height/2; // get the intiial height
image_alpha = 0;
image_angle = global.rotation;

image_yscale = _yscale;


time = global.timer;
timer = 0;
divide = 1/time; // how much to change the value each frame
_yscale = _yscale/time;
