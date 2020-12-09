/// @description Insert description here
// You can write your code in this editor

tempEnemy = other;
attackCollided = true;

if ((attacking == true) && (tempEnemy.hitByAttack == false))
{
	other.image_blend = c_red;

	other.hitByAttack = true;

	alarm[0] = attackTimer / 2;
}