/// @description Insert description here
// You can write your code in this editor

has_stolen = false
follow_targ = obj_player
mspd = 0.5
run_spd = 2

exit_spots = [[635,330],[13,24], [314,435]]
num_des = 3

path = path_add()


function generateExitSpot(){
	randomize()
	random_location = exit_spots[irandom(num_des-1)]
	return random_location
}
