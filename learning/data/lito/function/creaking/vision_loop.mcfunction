
execute if score RAYCAST temp matches 400.. run return fail
execute unless block ~ ~ ~ #lito:passable run return fail

execute as @n[type=creaking,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run return 1

scoreboard players add RAYCAST temp 1
execute positioned ^ ^ ^0.1 run return run function lito:creaking/vision_loop