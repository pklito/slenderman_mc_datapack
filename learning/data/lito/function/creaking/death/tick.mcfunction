scoreboard players add @s player.dying 1

execute if score @s player.dying matches 1..40 run function lito:creaking/death/tick_grabbed
execute if score @s player.dying matches 40 run function lito:creaking/death/start_death_screen

execute if score @s player.dying matches 41..70 run function lito:creaking/death/tick_deathscreen

scoreboard players set kill temp 0
execute if score @s player.dying matches 70.. run scoreboard players set kill temp 1
scoreboard players set @s[scores={player.dying=70..}] core.fear 0
scoreboard players reset @s[scores={player.dying=70..}] player.dying
execute if score kill temp matches 1 run kill @s