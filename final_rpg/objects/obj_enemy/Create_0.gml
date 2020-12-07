event_inherited();

alarm[0] = -1;
alarm[1] = -1;

state = "wander";

// Misc

healthLeft = 10;
maxHealth = healthLeft;


// Attack Params

attackRadius = 20;

attacking = false;

attackTimer = 20;

attackCollided = false;

hitByAttack = false;

// Movement

sprDirection = "down";

target = pointer_null;

move_dir = 0

hspd = 0
vspd = 0

x_remainder = 0
y_remainder = 0

bumped_into_something = false

path = path_add()
mspd = 0.5;
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