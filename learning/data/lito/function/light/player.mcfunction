
scoreboard players set RAYCAST temp 30
setblock 700 5 -200 light[level=6]
function lito:light/raycast_start

scoreboard players set RAYCAST temp 80
setblock 700 5 -200 light[level=6]
execute rotated ~5 ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 80
setblock 700 5 -200 light[level=6]
execute rotated ~-5 ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 100
setblock 700 5 -200 light[level=6]
execute rotated ~ ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 130
setblock 700 5 -200 light[level=6]
execute rotated ~ ~ run function lito:light/raycast_start