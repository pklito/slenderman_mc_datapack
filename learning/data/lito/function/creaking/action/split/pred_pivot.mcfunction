# Predicate if need to pivot when moving towards the other player
# Debug: execute as @n[tag=user.playing] if entity @s[tag=!action.target] run return 1
execute as @p[tag=user.playing] if entity @s[tag=!action.target] run return 1
return fail