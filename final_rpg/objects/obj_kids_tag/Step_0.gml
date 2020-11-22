event_inherited()

if (is_it)
{
	image_blend = c_red;
}
else
{
	image_blend = c_yellow;
}

if (is_it == true)
{
	nearest_inst = instance_nth_nearest(x, y, obj_kids_tag, 2);
	des_x = nearest_inst.x;
	des_y = nearest_inst.y;
	
	mspd = 1.0;
	
	if (point_distance(x,y,des_x,des_y) == 0)
	{
		at_location = true;
	
		if (is_it == true)
		{
			is_it = false;
			nearest_inst.alarm[0] = room_speed * 2;
			nearest_inst.at_location = true;
			nearest_inst.curr_wait_time = 0;
			curr_wait_time = 150;
		}
	}
}
else
{
	mspd = 0.5;
	
	if (point_distance(x,y,des_x,des_y) <= 3)
	{
		at_location = true;
	}
}

if (point_distance(x,y,des_x,des_y) <= 3){
	at_location = true;
	
	if (is_it == true)
	{
		is_it = false;
		//nearest_inst.alarm[0] = room_speed * 2;
		nearest_inst.is_it = true;
		curr_wait_time = 150;
	}
}

if at_location {
	curr_wait_time += 1
	if curr_wait_time >= wait_at_location {
		getDestination()
		curr_wait_time = 0
		at_location = false
	} 
}

if mp_grid_path(PATH_GRID, path, x, y, des_x, des_y, true){
	path_start(path, mspd, path_action_stop, false)
}
