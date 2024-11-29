execute unless score ITER temp matches 1.. run return fail
scoreboard players remove ITER temp 1
spreadplayers ~ ~ 32 8 false @s
execute at @s run tp @s ~ 5.5 ~

scoreboard players set TEMP temp 0
execute at @s unless block ~ ~ ~ #lito:passable run scoreboard players set TEMP temp 1
execute if score TEMP temp matches 1 run return run function lito:creaking/action/teleport_loop


# unless vision works in this place, do another loop
tag @e remove vision_target
tag @s add vision_target
execute as @a[tag=player,distance=..40] at @s store success score TPFUNC temp run function lito:creaking/vision_check/start
execute if score TPFUNC temp matches 1 run return run function lito:creaking/action/teleport_loop



return 1