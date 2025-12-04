# Move towards the other player 
scoreboard players remove ITER temp 1
execute if score ITER temp matches ..0 run return fail
execute if entity @p[tag=!action.target,tag=user.playing] rotated ~90 0 run return run function lito:creaking/action/split/iter_pivot

execute positioned ^ ^ ^1 run function lito:creaking/action/split/iter