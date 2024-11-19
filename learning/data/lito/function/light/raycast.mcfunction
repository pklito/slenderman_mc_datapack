execute unless block ^ ^ ^0.51 air unless block ^ ^ ^0.51 light run scoreboard players set RAYCAST temp 0

execute if score RAYCAST temp matches ..0 if block ~ ~ ~ air run clone 700 5 -200 700 5 -200 ~ ~ ~ filtered minecraft:light
execute if score RAYCAST temp matches ..0 run return fail
scoreboard players remove RAYCAST temp 5
execute positioned ^ ^ ^0.5 run return run function lito:light/raycast
