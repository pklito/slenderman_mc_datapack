scoreboard players set REMOVE temp 75
scoreboard players operation RAYCAST temp /= _4 CONST
scoreboard players operation REMOVE temp -= RAYCAST temp

scoreboard players operation FOURTH temp = REMOVE temp
scoreboard players operation FOURTH temp /= _4 CONST
#decrease amount if flashlight is off

execute if score @s flashlight_on matches 0..1 run scoreboard players operation REMOVE temp -= FOURTH temp
execute if score @s flashlight_on matches 0..1 run scoreboard players set FOURTH temp 0
# don't apply twice
execute facing entity @n[tag=slenderman_entity] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.5] run scoreboard players operation REMOVE temp -= FOURTH temp


execute if score REMOVE temp matches ..11 run scoreboard players set REMOVE temp 12
scoreboard players operation @s core.fear += REMOVE temp
