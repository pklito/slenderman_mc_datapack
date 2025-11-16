execute unless block ^ ^ ^0.51 air unless block ^ ^ ^0.51 light run scoreboard players set RAYCAST temp 0

# Light marker
execute if score RAYCAST temp matches ..0 if block ~ ~ ~ air run summon minecraft:marker ~ ~ ~ {Tags:["light"]}


execute if score RAYCAST temp matches ..0 if score IGNORE_BATTERY temp matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=5]
execute if score RAYCAST temp matches ..0 if score IGNORE_BATTERY temp matches 0 if score @s item.battery matches 700.. if block ~ ~ ~ air run setblock ~ ~ ~ light[level=6]
execute if score RAYCAST temp matches ..0 if score IGNORE_BATTERY temp matches 0 if score @s item.battery matches 350..699 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=5]
execute if score RAYCAST temp matches ..0 if score IGNORE_BATTERY temp matches 0 if score @s item.battery matches 100..349 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=4]
execute if score RAYCAST temp matches ..0 if score IGNORE_BATTERY temp matches 0 if score @s item.battery matches 0..99 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=3]

execute if score RAYCAST temp matches ..0 if score RAYCAST_REPEAT temp matches ..0 run return fail
execute if score RAYCAST temp matches ..0 run scoreboard players remove RAYCAST_REPEAT temp 1
execute if score RAYCAST temp matches ..0 run scoreboard players set RAYCAST temp 40

scoreboard players remove RAYCAST temp 5
execute positioned ^ ^ ^0.5 run return run function lito:light/raycast
