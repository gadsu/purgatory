/// When the bullet collides with an enemy
instance_create_depth(x,y - 5,0, obj_bullet_impact);
score += 1;
instance_destroy();
