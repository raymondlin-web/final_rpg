//switch sprites
image_xscale = 1
if (xprevious < x)
{
	sprite_index = spriteWalkRight;
	sprDirection = "right";
} 
else if xprevious > x 
{
	sprite_index = spriteWalkRight;
	image_xscale = -1;
	sprDirection = "left";
} 
else if yprevious < y 
{
	sprite_index = spriteWalkDown;
	sprDirection = "down";
} 
else if yprevious > y 
{
	sprite_index = spriteWalkUp;
	sprDirection = "up";
} 
else if yprevious == y or xprevious == x 
{
	image_index = 0;
}

if (attacking)
{
	image_xscale = 1;
	if (xprevious < x)
	{
		sprite_index = spriteAttackRight;
		sprDirection = "right";
	} 
	else if xprevious > x 
	{
		sprite_index = spriteAttackRight;
		image_xscale = -1;
		sprDirection = "left";
	} 
	else if yprevious < y 
	{
		sprite_index = spriteAttackDown;
		sprDirection = "down";
	} 
	else if yprevious > y 
	{
		sprite_index = spriteAttackUp;
		sprDirection = "up";
	} 
	else if yprevious == y or xprevious == x 
	{
		image_index = 0;
	}
}