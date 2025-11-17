execute unless score ITER temp matches 1.. run return fail
scoreboard players remove ITER temp 1
spreadplayers ~ ~ 32 8 false @s
execute at @s run tp @s ~ 5.5 ~

scoreboard players set TEMP temp 0
execute at @s unless block ~ ~ ~ #lito:passable run scoreboard players set TEMP temp 1
execute if score TEMP temp matches 1 run return run function lito:creaking/action/teleport_loop

execute at @s if entity @p[tag=player,distance=..2] run return run function lito:creaking/action/teleport_loop
# unless vision works in this place, do another loop
execute at @s if function lito:creaking/vision_check/test_position run return run function lito:creaking/action/teleport_loop



return 1