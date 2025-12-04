# Executed by slenderman
# Target player (if applicable) has the tag action.target
execute unless function lito:creaking/action/split/pred_start run return fail

scoreboard players set ITER temp 60

# Did function work correctly?
execute facing entity @p[tag=user.playing,tag=!action.target] feet rotated ~ 0 unless function lito:creaking/action/split/iter run return fail

tp @s @n[type=marker,tag=action.goal]
kill @e[type=marker,tag=action.goal]

# Slender moved
scoreboard players set @s ai.just_teleported 1