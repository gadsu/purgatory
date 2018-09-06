//when the bullet collides with the boss
//create a bullet impact
//add score
//destroy bullet
instance_create_depth(x,y - 5,0, obj_bullet_impact);
score += 100 / int64(obj_spawner.i);
instance_destroy();