# Viewed by @s
# Slender = tag=vision_target

# Make sure slender is in players cone of vision
execute facing entity @n[tag=vision_target] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.79] run return fail

execute unless entity @n[tag=vision_coord_getter] run summon marker ~ ~ ~ {Tags:["vision_coord_getter"]}
#right side
scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 1
execute at @n[tag=vision_target] facing entity @s feet positioned ^0.3 ^2.2 ^ facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_check/loop

#left side (if right side failed)
scoreboard players set GO_DOWN temp 1
execute if score SUCCESS temp matches 0 run scoreboard players set RAYCAST temp 0
execute if score SUCCESS temp matches 0 at @n[tag=vision_target] facing entity @s feet positioned ^-0.3 ^2.2 ^ facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_check/loop

execute if score SUCCESS temp matches 0 run return fail

scoreboard players operation RAYCAST slender_distance = RAYCAST temp
return 1