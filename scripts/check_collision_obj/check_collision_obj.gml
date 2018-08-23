/// script for collosion for all interactable objects


//create local variable arguments
var _vx, _vy, _collision;

_vx = argument[0];
_vy = argument[1];
_collision = false;



//which ever x or y is higher it will repeat it that many times
repeat(max(abs(_vx), abs(_vy) ))
{
	for (var i = 2; i < argument_count; i++)
	{
	
		// checks to see if where you are going if there is a wall there. Sign is whether its possitive
		// or negative
		if(place_meeting(x + sign(_vx), y + sign(_vy), argument[i]))
		{
			_collision = true;
			break;
		}
		
	}
	// if not colliding with anything, than move to that location
	if(!_collision)
	{
		x += sign(_vx);
		y += sign(_vy);
	}
	else
	{
		// if you are than break, you dont need to see if you collided more times
		break;
	}
}

return _collision;