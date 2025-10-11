execute if score #showMove dev.config matches 1 run tellraw @a[tag=debug] [{"text":"[ TP ]","color":"gray"},{"text":"move","color":"white"}]

kill @e[tag=move_option,type=marker]
execute store result score ITER temp run random value 12..32
function lito:creaking/action/move_loop_ray
execute store result score ITER temp run random value 24..40
function lito:creaking/action/move_loop_ray
execute store result score ITER temp run random value 32..44
function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 40..70
execute if predicate {condition:"random_chance",chance:0.5} unless entity @p[distance=..25] run function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 12..32
execute rotated ~25 ~ run function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 12..32
execute rotated ~-25 ~ run function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 12..32
execute rotated ~25 ~ run function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 12..32
execute rotated ~-25 ~ run function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 12..32
execute unless entity @e[distance=2.5..,tag=move_option,type=marker] rotated ~-90 ~ run function lito:creaking/action/move_loop_ray

execute store result score ITER temp run random value 12..32
execute unless entity @e[distance=2.5..,tag=move_option,type=marker] rotated ~90 ~ run function lito:creaking/action/move_loop_ray

execute at @e[sort=furthest,tag=move_option,type=marker] unless function lito:creaking/vision_check/test_position run return run tp @s ~ ~ ~
