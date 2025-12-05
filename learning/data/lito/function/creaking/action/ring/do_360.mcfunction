# Teleport around a player at a given radius or radius range
# This is to be far but not too far
function lito:creaking/action/ring/param
execute if score @p[tag=action.target] core.slender_distance matches ..0 run return fail

kill @e[type=marker,tag=action.goal]
execute at @p[tag=action.target] facing entity @s feet rotated ~-180 0 run function lito:creaking/action/ring/radius

scoreboard players set LOOP temp 20
execute run return run function lito:creaking/action/ring/find_valid