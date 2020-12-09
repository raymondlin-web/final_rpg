
event_inherited();

if (state == "wander")
{
	if (point_distance(x, y, obj_player.x, obj_player.y) <= 40)
	{
		des_x = obj_player.x;
		des_y = obj_player.y;
	
		state = "enemyChase";
	}
	else if(point_distance(x,y,des_x,des_y) <= 3)
	{
		at_location = true
	}
	
	if (at_location) 
	{
		curr_wait_time += 1
		if curr_wait_time >= wait_at_location 
		{
			getDestination()
			curr_wait_time = 0
			at_location = false
		} 
	}
}
else if (state == "enemyChase")
{
	if (point_distance(x, y, obj_player.x, obj_player.y) <= attackRadius)
	{
		des_x = x;
		des_y = y;
		
		state = "enemyAttacking";
		
		if (attacking == false)
		{	
			attacking = true;
			
			if (abs(x - obj_player.x) >= abs(y - obj_player.y))
			{
				if (x < obj_player.x)
				{
					sprDirection = "right";
				}
				else
				{
					sprDirection = "left";
				}
			}
			else if (abs(x - obj_player.x) < abs(y - obj_player.y))
			{
				if (y > obj_player.y)
				{
					sprDirection = "up";
				}
				else
				{
					sprDirection = "down";
				}
			}
			
			
			AttackSlash(obj_player, irandom(2));
		}
	}
	else if (point_distance(x, y, obj_player.x, obj_player.y) <= 40)
	{
		des_x = obj_player.x;
		des_y = obj_player.y;
		
		state = "enemyChase";
	}
	else
	{
		state = "wander";
		at_location = false;
		getDestination();
	}
}
else if (state == "enemyAttacking")
{	
	if ((attacking == false) && (point_distance(x, y, obj_player.x, obj_player.y) <= 40))
	{
		des_x = obj_player.x;
		des_y = obj_player.y;
		
		state = "enemyChase";
	}
	else if ((attacking == false) && (point_distance(x, y, obj_player.x, obj_player.y) > 40))
	{
		state = "wander";
		at_location = false;
		getDestination();
	}
	
	if ((attacking == true) && (alarm[1] == -1))
	{
		alarm[1] = attackTimer;
	}
}



if mp_grid_path(PATH_GRID, path, x, y, des_x, des_y, true){
	path_start(path, mspd, path_action_stop, false)
}

/*
if (point_distance(x, y, obj_player.x, obj_player.y) < 30)
{
	target = obj_player;
	
	EnemyChase();
}
else
{
	target = pointer_null;
}
*/