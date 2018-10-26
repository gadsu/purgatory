/// @description Change alpha per frame
image_alpha = image_alpha + divide;
if (timer == time)// once you reach the end of the timer
{
	instance_destroy();
}
timer++;