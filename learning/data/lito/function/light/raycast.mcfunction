execute unless block ^ ^ ^0.51 air unless block ^ ^ ^0.51 light run scoreboard players set RAYCAST temp 0

# Light marker
execute if score RAYCAST temp matches ..0 if block ~ ~ ~ air unless entity @e[tag=light,tag=!light_used] run summon minecraft:marker ~ ~ ~ {Tags:["light"]}
execute as @n[tag=light,tag=!light_used,sort=nearest] run tp ~ ~ ~
tag @n[tag=light,tag=!light_used,sort=nearest] add light_used

execute if score RAYCAST temp matches ..0 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=4]
execute if score RAYCAST temp matches ..0 run return fail
scoreboard players remove RAYCAST temp 5
execute positioned ^ ^ ^0.5 run return run function lito:light/raycast
