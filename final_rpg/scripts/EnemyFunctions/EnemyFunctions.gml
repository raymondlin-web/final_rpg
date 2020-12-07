// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyChase()
{
	
	/*
	if (instance_exists(target))
	{
		towardsX = target.x;
		towardsY = target.y;
		
		var distanceTravel = point_distance(x, y, towardsX, towardsY);
		
		dir = point_direction(x, y, towardsX, towardsY);
		
		if (distanceTravel > mspd)
		{
			hspd = lengthdir_x(mspd, dir);
			vspd = lengthdir_y(mspd, dir);
		}
		else
		{
			hspd = lengthdir_x(distanceTravel, dir);
			vspd = lengthdir_x(distanceTravel, dir);
		}
		
		if (hspd != 0)
		{
			//image_xscale = sign(hspd);
		}
		
		//MoveCollide();
		
	}
	
	*/
	
	if (instance_exists(target) && point_distance(x, y, target.x, target.y) <= attackRadius)
	{
		AttackSlash(obj_player, 1);
		towardsX += lengthdir_x(8, dir);
		towardsY += lengthdir_y(8, dir);
	}
			
}