// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Evolve()
{
	if (playerSpecies == "goblin")
	{
		spriteWalkUp = spr_player_walk_back;
		spriteWalkDown = spr_player_walk_front;
		spriteWalkRight = spr_player_walk_side;

		spriteAttackUp = spr_player_attack_up;
		spriteAttackDown = spr_player_attack_down;
		spriteAttackRight = spr_player_attack_right;

		spriteIdle = spr_player_idle;
	}
	else if (playerSpecies == "orc")
	{
		spriteWalkUp = spr_orc_up;
		spriteWalkDown = spr_orc_down;
		spriteWalkRight = spr_orc_right;

		spriteAttackUp = spr_orc_attack_up;
		spriteAttackDown = spr_orc_attack_down;
		spriteAttackRight = spr_orc_attack_right;

		spriteIdle = spr_orc_idle;
	}

}