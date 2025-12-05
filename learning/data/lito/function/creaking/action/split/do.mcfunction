# Executed by slenderman
# Target player (if applicable) has the tag action.target
execute unless function lito:creaking/action/split/pred_start run return fail

scoreboard players set ITER temp 60

# Debug: execute at @n[tag=user.playing,tag=action.target] facing entity @n[tag=user.playing,tag=!action.target] feet rotated ~ 0 run function lito:creaking/action/split/iter
execute at @p[tag=user.playing,tag=action.target] facing entity @p[tag=user.playing,tag=!action.target] feet rotated ~ 0 run function lito:creaking/action/split/iter
