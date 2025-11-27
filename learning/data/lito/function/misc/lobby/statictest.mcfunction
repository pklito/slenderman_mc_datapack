# As player at player
summon marker ~ ~ ~ {Tags:["vision_coord_getter"],UUID:[I;1234,1234,1234,1]}
scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 0
execute facing 544.7 6.7 -225.95 positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.91] run scoreboard players set RAYCAST temp 999999
execute positioned 544.7 6.7 -225.95 facing entity @s eyes if function lito:creaking/vision_check/loop run return run function lito:creaking/player/particle {val:0.5}


scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 0
execute facing 544.3 6.7 -225.95 positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.91] run scoreboard players set RAYCAST temp 999999
execute positioned 544.3 6.7 -225.95 facing entity @s eyes if function lito:creaking/vision_check/loop run return run function lito:creaking/player/particle {val:0.5}
particle minecraft:entity_effect{color:[0.996078431372549, 0.8, 0.0, 0.8]} ~ ~ ~ 0 0 0 0 1 normal @s