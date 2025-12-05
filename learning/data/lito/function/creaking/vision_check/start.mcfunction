# Viewed by @s
# Slender = tag=vision_target

execute at @n[tag=vision_target] facing entity @s feet run tp @n[tag=vision_target] ~ ~ ~ ~ 0
# Make sure slender is in players cone of vision
scoreboard players set TEMP temp 0
execute rotated as @n[tag=vision_target] positioned ^0.35 ^-0.3 ^ facing entity @n[tag=vision_target] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 rotated as @n[tag=vision_target] positioned ^-0.35 ^0.3 ^ if entity @s[distance=..0.83] run scoreboard players set TEMP temp 1
execute rotated as @n[tag=vision_target] positioned ^-0.35 ^-0.3 ^ facing entity @n[tag=vision_target] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 rotated as @n[tag=vision_target] positioned ^0.35 ^0.3 ^ if entity @s[distance=..0.83] run scoreboard players set TEMP temp 1

execute positioned ~ ~2 ~ facing entity @n[tag=vision_target] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 positioned ~ ~-2 ~ if entity @s[distance=..0.8] run scoreboard players set TEMP temp 1
execute if score TEMP temp matches 0 run return fail

# UUID insures only one exists
summon marker ~ ~ ~ {Tags:["vision_coord_getter"],UUID:[I;1234,1234,1234,1]}

#right side
scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 1
execute at @n[tag=vision_target] facing entity @s feet rotated ~ 0 positioned ^0.4 ^2.2 ^0.1 facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_check/loop

#left side (if right side failed)
execute if score SUCCESS temp matches 0 run scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 1
execute if score SUCCESS temp matches 0 at @n[tag=vision_target] facing entity @s feet rotated ~ 0 positioned ^-0.4 ^2.2 ^0.1 facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_check/loop

#left side (if right side failed)
execute if score SUCCESS temp matches 0 run scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 1
execute if score SUCCESS temp matches 0 at @n[tag=vision_target] facing entity @s feet rotated ~ 0 positioned ^ ^2.2 ^0.1 facing entity @s eyes store success score SUCCESS temp run function lito:creaking/vision_check/loop


execute if score SUCCESS temp matches 0 run return fail

scoreboard players operation RAYCAST core.slender_distance = RAYCAST temp
return 1