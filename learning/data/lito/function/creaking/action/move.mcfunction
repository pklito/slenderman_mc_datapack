scoreboard players set ITER temp 16
execute if predicate {condition:"random_chance",chance:0.05} run scoreboard players set ITER temp 40
function lito:creaking/action/move_loop_ray

scoreboard players set ITER temp 16
execute rotated ~25 ~ run function lito:creaking/action/move_loop_ray

scoreboard players set ITER temp 16
execute rotated ~-25 ~ run function lito:creaking/action/move_loop_ray

tp @s @n[sort=random,tag=move_option,type=marker]
kill @e[tag=move_option,type=marker]