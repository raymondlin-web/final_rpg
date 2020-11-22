if(point_distance(x,y,follow_targ.x, follow_targ.y) < 100 and not has_stolen){

	path_x = follow_targ.x
	path_y = follow_targ.y
	
	if mp_grid_path(PATH_GRID, path, x, y, path_x, path_y, true){
		path_start(path, mspd, path_action_stop, false)
	}

}


if(point_distance(x,y,follow_targ.x, follow_targ.y) <= 5) {
	has_stolen = true
}

if has_stolen and point_distance(x,y,obj_player.x, obj_player.y) <= 3{
	
	exit_spot = generateExitSpot()
	
	if mp_grid_path(PATH_GRID, path, x, y, exit_spot[0], exit_spot[1], true){
		path_start(path, run_spd, path_action_stop, false)
	}
}