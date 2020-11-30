// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackSlash(enemyCheck, slashDamage)
{
	if (attacking)
	{
		//if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
	}
	
	//ds_list_clear(hitByAttack);
	
	CheckAttackCollide(enemyCheck, slashDamage);

}