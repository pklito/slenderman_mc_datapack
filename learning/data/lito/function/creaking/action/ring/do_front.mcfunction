# Teleport around a player at a given radius or radius range
# This is to be far but not too far
kill @e[type=marker,tag=action.goal]

scoreboard players set RING VAR 25
scoreboard players set RING VAR2 50
execute at @p[tag=action.target] rotated ~-45 0 run function lito:creaking/action/ring/radius

scoreboard players set RING VAR 30
scoreboard players set RING VAR2 60
execute at @p[tag=action.target] rotated ~-45 0 run function lito:creaking/action/ring/radius

scoreboard players set RING VAR 40
scoreboard players set RING VAR2 80
execute at @p[tag=action.target] rotated ~-45 0 run function lito:creaking/action/ring/radius

# execute at @e[type=marker,tag=action.goal] run particle flame

scoreboard players set LOOP temp 50
execute run return run function lito:creaking/action/ring/find_valid