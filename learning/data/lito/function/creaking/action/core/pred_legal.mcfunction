# Predicate if need to pivot when moving towards the other player
execute if entity @n[tag=user.playing,distance=..3] run return 1
return fail