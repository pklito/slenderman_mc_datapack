scoreboard players add @s player.dying 1

execute if score @s player.dying matches 1..100 run function lito:creaking/death/tick_grabbed
execute if score @s player.dying matches 100 run function lito:creaking/death/start_death_screen

execute if score @s player.dying matches 101..300 run function lito:creaking/death/tick_deathscreen

execute if score @s player.dying matches 300 run kill @s
scoreboard players reset @s[scores={player.dying=301..}] player.dying