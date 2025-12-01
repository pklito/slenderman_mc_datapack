
# Naming convention for players:
# user.in_game, anyone playing, dead, or spectacting (not in lobby)
# user.spectating, adventure mode player (potential slender target)
# user.playing, adventure mode player (potential slender target)
# core.alive, in death screen or not!
# user.dead
scoreboard players set @a core.alive 0
scoreboard players set @e[type=player] core.alive 1

gamemode spectator @a[scores={core.alive=0},tag=user.playing]

tag @a[tag=user.in_game,gamemode=adventure] add user.playing
tag @a[tag=user.in_game,gamemode=spectator] add user.spectating
tag @a[tag=user.in_game,gamemode=adventure] remove user.spectating
tag @a[tag=user.in_game,gamemode=spectator] remove user.playing

title @a[tag=debug,tag=user.playing] actionbar [{"text":"Currently: ","color": "gray"},{"text": "PLAYER","bold": true,"color":"yellow"}]
title @a[tag=debug,tag=user.spectating] actionbar [{"text":"Currently: ","color": "gray"},{"text": "SPECTATOR","bold": true,"color":"#81bbf5"}]


execute unless entity @n[tag=slenderman_entity] run return fail

# Calculate the important scoreboard values for all players
function lito:creaking/core

execute as @a[tag=user.playing] at @s run function lito:creaking/player/tick

# Just to remove the effects from those not playing
scoreboard players set @a[tag=!user.playing] core.fear 0
scoreboard players set @a[gamemode=creative,scores={core.fear=200..}] core.fear 200

execute as @a[tag=user.in_game] at @s run function lito:creaking/player/tick

execute as @a[tag=user.playing, scores={player.dying=1..}] at @s run function lito:creaking/death/tick
execute as @a[scores={player.hasDied=1..}] run function lito:creaking/death/reset

execute as @n[tag=slenderman_entity] at @s run function lito:creaking/slenderman

# F5 Particle 
execute if score #F5Prevention dev.config matches 1 as @a[tag=user.playing] at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.4, 1., 0.6]} ^ ^1 ^-22 0 0 0 0 1 force @s
execute as @a at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.4, 0., 0.6]} ^ ^1 ^30 0 0 0 0 1 normal @s