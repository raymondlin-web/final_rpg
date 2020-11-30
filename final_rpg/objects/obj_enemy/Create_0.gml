event_inherited();

healthLeft = 5;
maxHealth = healthLeft;

sprDirection = "down";

mspd = 1.5

move_dir = 0

hspd = 0
vspd = 0

x_remainder = 0
y_remainder = 0

bumped_into_something = false

attacking = false;

path = path_add()
mspd = 0.5
wait_at_location = room_speed;
curr_wait_time = 0

at_location = false;

spriteWalkUp = spr_orc_up;
spriteWalkDown = spr_orc_down;
spriteWalkRight = spr_orc_right;

spriteAttackUp = spr_orc_attack_up;
spriteAttackDown = spr_orc_attack_down;
spriteAttackRight = spr_orc_attack_right;

spriteIdle = spr_orc_idle;


function getDestination()
{
	des_x = x;
	des_y = y;
	
	randomize();
	
	randNum = irandom(3);
	
	if (randNum == 0)
	{
		des_x += irandom(10);
	}
	else if (randNum == 1)
	{
		des_y += irandom(10);
	}
	else if (randNum == 2)
	{
		des_x -= irandom(10);
	}
	else if (randNum == 3)
	{
		des_y -= irandom(10);
	}
}

getDestination()