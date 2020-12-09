/// @description Insert description here
// You can write your code in this editor

tempEnemy = other;

if ((attacking) && (tempEnemy.hitByAttack == false))
{
	other.image_blend = c_red;

	other.hitByAttack = true;

	alarm[0] = room_speed / 16;
	
	//instance_create_layer(x, y, "Instances", obj_damageCounter);
	
	AttackSlash(other, slashDamage);
}