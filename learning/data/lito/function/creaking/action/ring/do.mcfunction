# Teleport around a player at a given radius or radius range
# This is to be far but not too far
scoreboard players operation RING VAR = @p[tag=action.target] core.slender_distance
execute if score @p[tag=action.target] core.slender_distance matches ..0 run scoreboard players set RING VAR 600
# scoreboard players remove RING VAR 8
scoreboard players operation RING VAR2 = RING VAR

scoreboard players operation RING VAR /= _4 CONST
# scoreboard players operation RING VAR2 *= _10 CONST

kill @e[type=marker,tag=action.goal]
execute at @p[tag=action.target] facing entity @s feet rotated ~-90 0 run function lito:creaking/action/ring/radius

execute at @e[tag=action.goal,sort=random,limit=1] run function lito:creaking/action/core/success_silent