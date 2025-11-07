execute unless entity @n[tag=slenderman_entity] run return fail

scoreboard players set @a core.alive 0
scoreboard players set @e[type=player] core.alive 1
tag @a[scores={core.alive=0},tag=player] add dead_player
tag @a[scores={core.alive=0}] remove player
tag @a[scores={core.alive=1},tag=dead_player] add player
tag @a[scores={core.alive=1}] remove dead_player

# Calculate the important scoreboard values for all players
function lito:creaking/core

execute as @a[tag=player, gamemode=adventure] at @s run function lito:creaking/player/tick

# Just to remove the effects
scoreboard players set @a[gamemode=creative] core.fear 0
execute as @a[tag=player, gamemode=creative] at @s run function lito:creaking/player/tick

execute as @a[tag=player, gamemode=adventure, scores={player.dying=1..}] at @s run function lito:creaking/death/tick
execute as @a[scores={player.hasDied=1..}] run function lito:creaking/death/reset

execute as @n[tag=slenderman_entity] at @s run function lito:creaking/slenderman

# F5 Particle 
execute as @a[tag=player,gamemode=adventure] at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.4, 1., 0.6]} ^ ^1 ^-22 0 0 0 0 1 force @s
execute as @a[tag=player] at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.4, 0., 0.6]} ^ ^1 ^30 0 0 0 0 1 normal @s