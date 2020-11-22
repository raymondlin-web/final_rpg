path = path_add()
poss_destinations = [[220, 105], [165, 105], [165, 55], [55, 55], [55, 280], [423, 280], [423, 315], [600, 315]]
des = 0;
go_back = false;
mspd = 0.5
wait_at_location = 150
curr_wait_time = 0

at_location = false

function getDestination()
{
	des_x = poss_destinations[des][0];
	des_y = poss_destinations[des][1];
	
	if (go_back) des--;
	else if (!go_back) des++;
	
	if (des == 7 && !go_back)
	{
		go_back = true;
	}
	else if (des == 0 && go_back)
	{
		go_back = false;
	}
}

getDestination()