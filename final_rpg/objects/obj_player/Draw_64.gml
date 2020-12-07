/// @description Insert description here
// You can write your code in this editor

// Draw Health Bar
draw_sprite_ext(sprHealthBarFrame, 0, healthbarX, healthbarY, 4, 3, 0, c_white, 1);
draw_sprite_stretched(sprHealthBar, 0, healthbarX + 4, healthbarY - 33, (healthLeft/maxHealth) * healthbarWidth, healthbarHeight);


// Draw Evolution Bar
draw_sprite_ext(sprEvolutionBarFrame, 0, evolutionbarX, evolutionbarY, 4, 3, 0, c_white, 1);
draw_sprite_stretched(sprEvolutionBar, 0, evolutionbarX + 4, evolutionbarY - 33, (evolutionProgress/evolutionProgressGoal) * evolutionbarWidth, evolutionbarHeight);


//draw_sprite(sprSlashIcon, 0, ability1X, ability1Y);

if (evolutionProgress == evolutionProgressGoal)
{
	draw_set_font(gameFont);
	draw_set_color(c_yellow);
	draw_text(x, y, "Press E to Evolve");
}