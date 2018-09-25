// Spawn bullets in the shape of a triangle

var bullet, dir, x_cord, y_cord , num, length; // what bullet, angle skew, x and y origin, and how many per side
var divide_x, divide_y,angle;                             // plus the length of the triangle

bullet = argument[0];
dir = argument[1];
x_cord = argument[2];
y_cord = argument[3];
num = argument[4];
length = argument[5];

angle = 360 / (3 * num);

// y = 2x + (a/2)(sqrt(3))    and y = -2x + (a/2)(sqrt(3))
divide_y = ((length/2)*(sqrt(3)))/num;
divide_x = length / num;
for (var i = 0; i < num; i++)
{
	enemy_bullet(obj_enemy_bullet_wonder, 210 + (i * angle), (x - length/2) + (i * num), ((length/2)*(sqrt(3))/2)); // buttom side of triangle
}