/// @description Insert description here
// You can write your code in this editor
event_inherited()

if(point_distance(x,y,follow_targ.x, follow_targ.y) > 16){

	path_x = follow_targ.x
	path_y = follow_targ.y

} else {
	path_x = x
	path_y = y
}

if mp_grid_path(PATH_GRID, path, x, y, path_x, path_y, true){
	
	path_start(path, mspd, path_action_stop, false)
	
}