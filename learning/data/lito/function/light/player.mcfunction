
scoreboard players set RAYCAST temp 30
setblock 700 5 -200 light[level=6]
function lito:light/raycast_start
execute rotated ~ -180 run function lito:light/raycast_start
scoreboard players set RAYCAST temp 80
execute rotated ~5 ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 80
execute rotated ~-5 ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 100
execute rotated ~ ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 130
execute rotated ~ ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 160
execute rotated ~ ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 200
execute rotated ~ ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 160
execute rotated ~10 ~ run function lito:light/raycast_start

scoreboard players set RAYCAST temp 200
execute rotated ~10 ~ run function lito:light/raycast_start


scoreboard players set RAYCAST temp 160
execute rotated ~-10 ~ run function lito:light/raycast_start


scoreboard players set RAYCAST temp 200
execute rotated ~-10 ~ run function lito:light/raycast_start