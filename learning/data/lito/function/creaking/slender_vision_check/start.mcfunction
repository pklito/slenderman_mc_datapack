# Viewed by @s
# Slender = tag=vision_target

# UUID insures only one exists
summon marker ~ ~ ~ {Tags:["vision_coord_getter"],UUID:[I;1234,1234,1234,1]}

#right side
scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 1
execute at @n[tag=vision_target] facing entity @s feet positioned ^0.3 ^2.2 ^ facing entity @s eyes store success score SUCCESS temp run function lito:creaking/slender_vision_check/loop

#left side (if right side failed)
scoreboard players set GO_DOWN temp 1
execute if score SUCCESS temp matches 0 run scoreboard players set RAYCAST temp 0
execute if score SUCCESS temp matches 0 at @n[tag=vision_target] facing entity @s feet positioned ^-0.3 ^2.2 ^ facing entity @s eyes store success score SUCCESS temp run function lito:creaking/slender_vision_check/loop

execute if score SUCCESS temp matches 0 run return fail

scoreboard players operation RAYCAST core.slender_distance = RAYCAST temp
return 1