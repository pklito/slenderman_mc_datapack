execute unless function lito:creaking/action/split/pred_pivot run return run function lito:creaking/action/split/success

scoreboard players remove ITER temp 1
execute if score ITER temp matches ..0 run return fail
execute positioned ^ ^ ^1 run function lito:creaking/action/split/iter_pivot