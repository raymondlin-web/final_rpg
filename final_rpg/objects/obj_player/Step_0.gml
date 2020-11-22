
event_inherited();

if keyboard_check(ord("W")){ // 90 degree angle to move up
	attacking = false;
	move_dir = 90
	if keyboard_check(ord("A")){
		move_dir += 45				// +45 for up-left
	}else
	if keyboard_check(ord("D")){
		move_dir -= 45				// -45 for up-right
	}
} else
if keyboard_check(ord("S")){
	attacking = false;
	move_dir = 270					// 270 degree angle to move down
	if keyboard_check(ord("A")){
		move_dir -= 45				// -45 for down-left
	}else
	if keyboard_check(ord("D")){
		move_dir += 45				// +45 for down-right
	}
}else{
	if keyboard_check(ord("A")){
		move_dir = 180				// 180 degree angle to move left
	}else
	if keyboard_check(ord("D")){
		move_dir = 0				// 0 degrees to move right
	}
}
hspd = lengthdir_x(mspd,move_dir)	// find x&y speed by using angle and base speed
vspd = lengthdir_y(mspd,move_dir)

if keyboard_check(ord("W"))
or keyboard_check(ord("A"))
or keyboard_check(ord("S"))
or keyboard_check(ord("D")){		// if pressing any move keys, move player!
	MoveCollide()
}

if (keyboard_check(vk_space))
{
	attacking = true;
}