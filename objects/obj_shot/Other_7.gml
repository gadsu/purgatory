/// when the shot blast comes to an end
image_speed = 0;

switch(instrument)
{
	case 0:
		image_blend = make_color_rgb(255, 255, 255)
	break;
	case 1:
		image_blend = make_color_rgb(0, 255, 255)
	break;
	case 2:
		image_blend = make_color_rgb(255, 0, 255)
	break;
	default:
		image_blend = make_color_rgb(0,0,0)
	break;
}


image_index = 1;
