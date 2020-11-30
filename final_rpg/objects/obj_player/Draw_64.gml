/// @description Insert description here
// You can write your code in this editor

// Draw Health Bar
draw_sprite(sprHealthBarFrame, 0, healthbarX, healthbarY);
draw_sprite_stretched(sprHealthBar, 0, healthbarX, healthbarY + (((maxHealth-healthLeft)/maxHealth) * healthbarHeight), healthbarWidth, (healthLeft/maxHealth) * healthbarHeight);


// Draw Evolution Bar
draw_sprite(sprEvolutionBarFrame, 0, evolutionbarX, evolutionbarY);
draw_sprite_stretched(sprEvolutionBar, 0, evolutionbarX, evolutionbarY + (((evolutionProgressGoal-evolutionProgress)/evolutionProgressGoal) * evolutionbarHeight), evolutionbarWidth, (evolutionProgress/evolutionProgressGoal) * evolutionbarHeight);


draw_sprite(sprSlashIcon, 0, ability1X, ability1Y);

if (evolutionProgress == evolutionProgressGoal)
{
	draw_set_font(gameFont);
	draw_set_color(c_yellow);
	draw_text(x, y, "Press E to Evolve");
}