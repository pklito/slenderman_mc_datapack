# As player
summon marker ~ ~ ~ {Tags:["vision_coord_getter"],UUID:[I;1234,1234,1234,1]}
scoreboard players set RAYCAST temp 0
scoreboard players set GO_DOWN temp 0
execute positioned 544.5 6.5 -225.5 facing entity @s eyes if function lito:creaking/vision_check/loop run say seeing skull
