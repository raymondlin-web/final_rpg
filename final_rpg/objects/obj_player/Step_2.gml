//switch sprites
image_xscale = 1
if (xprevious < x){
	sprite_index = spr_player_walk_side
} else if xprevious > x {
	sprite_index = spr_player_walk_side
	image_xscale = -1
} else if yprevious < y {
	sprite_index = spr_player_walk_front
} else if yprevious > y {
	sprite_index = spr_player_walk_back
} else if yprevious == y or xprevious == x {
	sprite_index = spr_player_idle
}

if (attacking)
{
	image_xscale = 1;
	if (xprevious < x){
		sprite_index = spr_player_attack_right
	} else if xprevious > x {
		sprite_index = spr_player_attack_right
		image_xscale = -1
	} else if yprevious < y {
		sprite_index = spr_player_attack_up
	} else if yprevious > y {
		sprite_index = spr_player_attack_down
	} else if yprevious == y or xprevious == x {
		sprite_index = spr_player_idle
	}
}