scoreboard players set ITER temp 16
function lito:creaking/action/move_loop_ray

scoreboard players set ITER temp 16
execute rotated ~25 ~ run function lito:creaking/action/move_loop_ray

scoreboard players set ITER temp 16
execute rotated ~-25 ~ run function lito:creaking/action/move_loop_ray

execute at @e[sort=random,tag=move_option,type=marker] unless function lito:creaking/vision_check/test_position run tp @s ~ ~ ~
kill @e[tag=move_option,type=marker]