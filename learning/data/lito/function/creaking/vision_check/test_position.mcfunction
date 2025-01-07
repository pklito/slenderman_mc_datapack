# Should be called at the position being checked
# Returns 1 if a player is looking at that position.
tag @e remove vision_target
summon marker ~ ~ ~ {Tags:["vision_target", "vision_target_marker"]}
scoreboard players set RAYCAST slender_distance -1
execute as @a[tag=player,distance=..50] at @s run function lito:creaking/vision_check/start
kill @e[tag=vision_target_marker]
execute if score RAYCAST slender_distance matches 0.. run return 1
return 0