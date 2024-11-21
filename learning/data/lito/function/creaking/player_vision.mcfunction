scoreboard players set RAYCAST temp 0
execute facing entity @n[type=creaking] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.8] run return fail
execute anchored eyes facing entity @n[type=creaking] eyes unless function lito:creaking/vision_loop run return fail


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
