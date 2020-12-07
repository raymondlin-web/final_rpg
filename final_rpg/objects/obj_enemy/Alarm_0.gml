/// @description Insert description here
// You can write your code in this editor

if (attackCollided && tempEnemy)
{
	tempEnemy.image_blend = -1;
	tempEnemy.hitByAttack = false;
	tempEnemy = pointer_null;
	attackCollided = false;
}

attacking = false;
alarm[0] = -1;