# Executed by slenderman
# Target player (if applicable) has the tag action.target

# Predicate if to do this action or not
execute at @p[tag=action.target] if entity @p[tag=user.playing,tag=!action.target,distance=..60] run return 1
return fail