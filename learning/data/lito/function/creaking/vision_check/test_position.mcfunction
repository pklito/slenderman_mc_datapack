# Should be called at the position being checked
# Returns 1 if a player is looking at that position.
tag @e remove vision_target
kill @e[tag=vision_target_marker]
summon marker ~ ~ ~ {Tags:["vision_target", "vision_target_marker"]}
scoreboard players set RAYCAST core.slender_distance -1
execute as @a[tag=player,distance=..50] at @s if function lito:creaking/vision_check/_per_player_test run return 1
return 0