# Sets core.slender_distance
# Sets slender_fear
# 
tag @e remove vision_target
tag @n[tag=slenderman_entity] add vision_target

scoreboard players set @s core.slender_distance -1
execute unless function lito:creaking/vision_check/start run return fail
scoreboard players operation @s core.slender_distance = RAYCAST core.slender_distance


scoreboard players set REMOVE temp 75
scoreboard players operation RAYCAST temp /= _4 CONST
scoreboard players operation REMOVE temp -= RAYCAST temp

scoreboard players operation FOURTH temp = REMOVE temp
scoreboard players operation FOURTH temp /= _4 CONST
#decrease amount if not looking right at it

execute if score @s flashlight_on matches 0..1 run scoreboard players operation REMOVE temp -= FOURTH temp
execute if score @s flashlight_on matches 0..1 run scoreboard players set FOURTH temp 0
# don't apply twice
execute facing entity @n[tag=slenderman_entity] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.5] run scoreboard players operation REMOVE temp -= FOURTH temp


execute if score REMOVE temp matches ..11 run scoreboard players set REMOVE temp 12
scoreboard players operation @s slender_fear += REMOVE temp
