// Spawn bullets in the shape of a triangle

var dir, x_cord, y_cord , num, length, bullet_speed; // what bullet, angle skew, x and y origin, and how many per side
var divide_x, divide_y;                           // plus the length of the triangle
var vx, vy, len; // vector variables
var x_sum, y_sum;
var testing;
dir = argument[0]; // HAS TO BE IN RADIANS
x_cord = argument[1];
y_cord = argument[2];
num = argument[3];
length = argument[4];
bullet_speed = argument[5];



// y = 2x + (a/2)(sqrt(3))    and y = -2x + (a/2)(sqrt(3))
divide_y = ((length/2)*(sqrt(3)))/num;
divide_x = length / num;


// Vectorize the locations and normalize them
	//bottom side
	
for (var i = 0; i <= num; i++)
{
	x_sum = (x_cord - length/2) + (i * divide_x); // the x location of the vecxtor simplified into a variable
	y_sum = y_cord + ((length*(sqrt(3))/6)); // find the y center of the triangle
	
	var rotatedX = cos(dir) * (x_sum - x_cord) - sin(dir) * (y_sum-y_cord) + x_cord;
	var rotatedY = sin(dir) * (x_sum - x_cord) + cos(dir) * (y_sum - y_cord) + y_cord;
	
	vx = (rotatedX - x_cord);
	vy = (rotatedY - y_cord);
	len = sqrt((vx * vx) + (vy * vy)); // find the length of the vector

	global.x_speed = vx * bullet_speed;
	global.y_speed = vy * bullet_speed;
	
	enemy_bullet(obj_enemy_bullet_vector, 0, rotatedX,rotatedY);
	
}
//left side
for (var i = 0; i < num; i++)
{
	x_sum = ((x_cord - length/2) + (i * divide_x/2));
	y_sum = (y_cord + ((length*(sqrt(3))/6))) - (i * divide_y);
	
	var rotatedX = cos(dir) * (x_sum - x_cord) - sin(dir) * (y_sum-y_cord) + x_cord;
	var rotatedY = sin(dir) * (x_sum - x_cord) + cos(dir) * (y_sum - y_cord) + y_cord;
	vx = (rotatedX - x_cord);
	vy = (rotatedY - y_cord);
	
	global.x_speed = vx * bullet_speed;
	global.y_speed = vy * bullet_speed;
	
	enemy_bullet(obj_enemy_bullet_vector, 0, rotatedX,rotatedY);
}
// right side
for (var i = 0; i < num; i++)
{
	x_sum = (x_cord + (i * divide_x/2));
	y_sum = (y_cord - 2*((length*(sqrt(3))/6))) + (i * divide_y);
	
	var rotatedX = cos(dir) * (x_sum - x_cord) - sin(dir) * (y_sum-y_cord) + x_cord;
	var rotatedY = sin(dir) * (x_sum - x_cord) + cos(dir) * (y_sum - y_cord) + y_cord;
	
	vx = (rotatedX - x_cord);
	vy = (rotatedY - y_cord);
	
	global.x_speed = vx * bullet_speed;
	global.y_speed = vy * bullet_speed;
	
	enemy_bullet(obj_enemy_bullet_vector, 0, rotatedX,rotatedY);
}



//for (var i = 0; i < num; i++)
//{
//	enemy_bullet(obj_enemy_bullet_wonder, 210 + (i * angle), (x_cord - length/2) + (i * divide_x), ((length/2)*(sqrt(3))/2)); // buttom side of triangle
//	show_debug_message("The x is:");
//	show_debug_message(((x - length/2) + (i * divide_x)));
//	show_debug_message("The y is:");
//	show_debug_message(((length/2)*(sqrt(3))/2));
//}