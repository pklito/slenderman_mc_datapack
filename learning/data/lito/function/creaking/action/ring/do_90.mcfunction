# Teleport around a player at a given radius or radius range
# This is to be far but not too far
function lito:creaking/action/ring/param

execute if score @p[tag=action.target] core.slender_distance matches ..0 run return fail


scoreboard players operation RING VAR2 /= _4 CONST

kill @e[type=marker,tag=action.goal]
execute at @p[tag=action.target] facing entity @s feet rotated ~-45 0 run function lito:creaking/action/ring/radius

scoreboard players set LOOP temp 20
execute run return run function lito:creaking/action/ring/find_valid