//switch sprites

if (is_it == false)
{
	image_xscale = 1
	if (xprevious < x){
		sprite_index = spr_kid_walk_side
	} else if xprevious > x {
		sprite_index = spr_kid_walk_side
		image_xscale = -1
	} else if yprevious < y {
		sprite_index = spr_kid_walk_front;
	} else if yprevious > y {
		sprite_index = spr_kid_walk_back
	} else if yprevious == y or xprevious == x {
		sprite_index = spr_kid_idle
	}
}
else if (is_it == true)
{
	image_xscale = 1
	if (xprevious < x){
		sprite_index = spr_kid_it_walk_side
	} else if xprevious > x {
		sprite_index = spr_kid_it_walk_side
		image_xscale = -1
	} else if yprevious < y {
		sprite_index = spr_kid_it_walk_front
	} else if yprevious > y {
		sprite_index = spr_kid_it_walk_back
	} else if yprevious == y or xprevious == x {
		sprite_index = spr_kid_it_idle
	}
}