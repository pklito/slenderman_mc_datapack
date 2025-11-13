# 20 blocks total
scoreboard players set RAYCAST temp 10
scoreboard players set RAYCAST_REPEAT temp 6

execute rotated ~ ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 40
scoreboard players set RAYCAST_REPEAT temp 5
execute rotated ~10 ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 40
scoreboard players set RAYCAST_REPEAT temp 5
execute rotated ~-10 ~ run function lito:light/raycast_start