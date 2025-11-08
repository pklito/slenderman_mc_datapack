scoreboard players add @s player.dying 1

execute if score @s player.dying matches 1..40 run function lito:creaking/death/tick_grabbed
execute if score @s player.dying matches 40 run function lito:creaking/death/start_death_screen

execute if score @s player.dying matches 41..80 run function lito:creaking/death/tick_deathscreen

scoreboard players set kill temp 0
execute if score @s player.dying matches 80.. run scoreboard players set kill temp 1
execute if score @s player.dying matches 80.. run function lito:creaking/death/end_death
execute if score kill temp matches 1 run kill @s