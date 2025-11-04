execute unless entity @n[tag=slenderman_entity] run return fail

# Calculate the important scoreboard values for all players
function lito:creaking/core

execute as @a[tag=player, gamemode=adventure] at @s run function lito:creaking/player/tick

# Just to remove the effects
scoreboard players set @a[gamemode=creative] core.fear 0
execute as @a[tag=player, gamemode=creative] at @s run function lito:creaking/player/tick

execute as @a[tag=player, gamemode=adventure, scores={player.dying=1..}] run function lito:creaking/death/tick

execute as @n[tag=slenderman_entity] at @s run function lito:creaking/slenderman
