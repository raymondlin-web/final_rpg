path = path_add()
poss_destinations = [[44,356], [60, 360], [170, 410], [275, 375], [200, 360], [80, 425], [140, 400], [130, 360]]
num_des = 8
is_it = false;
mspd = 0.5
wait_at_location = 75
curr_wait_time = 0

at_location = false


function getDestination()
{
	
	if (is_it == false)
	{
		randomize()
		random_location = poss_destinations[irandom(num_des-1)]
		des_x = random_location[0]
		des_y = random_location[1]
	}
	else
	{
		nearest_inst = instance_nth_nearest(x, y, obj_kids_tag, 2);
		
		des_x = nearest_inst.x;
		des_y = nearest_inst.y
	}
}

getDestination()