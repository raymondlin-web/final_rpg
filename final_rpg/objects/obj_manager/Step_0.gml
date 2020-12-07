/// @description Insert description here
// You can write your code in this editor

if (room == rm_town)
{
	
	
	if (totalOrcs < 5)
	{
		getDestination();
		instance_create_layer(des_x, des_y, "Instances", obj_enemy);
		
		totalOrcs++;
	}
	
	
	if (keyboard_check(ord("R")))
	{
		room_restart();
	}
}