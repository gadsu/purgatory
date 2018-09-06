/// When the bullet collides with an enemy
instance_create_depth(x,y - 5,0, obj_bullet_impact);
score += 1;

with (other)
{
	image_blend = make_color_hsv(0,255,255);
}
//instance_destroy();
