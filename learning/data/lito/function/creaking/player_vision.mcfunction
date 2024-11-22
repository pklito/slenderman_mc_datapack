
# Make sure slender is in players cone of vision
execute facing entity @n[tag=slenderman_entity] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.79] run return fail

#right side
scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 1
execute at @n[tag=slenderman_entity] facing entity @s feet positioned ^0.4 ^2.2 ^ facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_loop

#left side (if right side failed)
scoreboard players set GO_DOWN temp 1
execute if score SUCCESS temp matches 0 run scoreboard players set RAYCAST temp 0
execute if score SUCCESS temp matches 0 at @n[tag=slenderman_entity] facing entity @s feet positioned ^-0.4 ^2.2 ^ facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_loop

execute if score SUCCESS temp matches 0 run return fail

scoreboard players operation @s slender_distance = RAYCAST temp

scoreboard players set REMOVE temp 65
scoreboard players operation RAYCAST temp /= _4 CONST
scoreboard players operation REMOVE temp -= RAYCAST temp

scoreboard players operation FOURTH temp = REMOVE temp
scoreboard players operation FOURTH temp /= _4 CONST
#decrease amount if not looking right at it

execute if score @s flashlight_on matches 0..1 run scoreboard players operation REMOVE temp -= FOURTH temp
execute if score @s flashlight_on matches 0..1 run scoreboard players set FOURTH temp 0
# don't apply twice
execute facing entity @n[type=creaking] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.5] run scoreboard players operation REMOVE temp -= FOURTH temp


execute if score REMOVE temp matches ..11 run scoreboard players set REMOVE temp 12
scoreboard players operation @s slender_fear += REMOVE temp
