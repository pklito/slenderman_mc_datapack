# Viewed by @s
# Slender = tag=vision_target
# output core.slender_distance, core.seen
# UUID insures only one exists
summon marker ~ ~ ~ {Tags:["vision_coord_getter"],UUID:[I;1234,1234,1234,1]}

#5 matches ^ ^ ^0.5
scoreboard players set RAYCAST temp 5
scoreboard players set GO_DOWN temp 1
scoreboard players set RAYCAST core.seen 1
execute at @n[tag=vision_target] facing entity @s feet positioned ^ ^2.2 ^ facing entity @s eyes positioned ^ ^ ^0.5 run function lito:creaking/slender_vision_check/loop

scoreboard players operation RAYCAST core.slender_distance = RAYCAST temp
execute if score RAYCAST core.seen matches 1 run return 1
return fail