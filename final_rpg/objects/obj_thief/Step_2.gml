//switch sprites
image_xscale = 1
if (xprevious < x){
	sprite_index = spr_thief_walk_side
} else if xprevious > x {
	sprite_index = spr_thief_walk_side
	image_xscale = -1
} else if yprevious < y {
	sprite_index = spr_thief_walk_front
} else if yprevious > y {
	sprite_index = spr_thief_walk_back
} else if yprevious == y or xprevious == x {
	sprite_index = spr_thief_idle
}