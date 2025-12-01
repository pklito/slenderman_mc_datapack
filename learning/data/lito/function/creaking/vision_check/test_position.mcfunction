# Should be called at the position being checked
# Returns 1 if a player is looking at that position.
tag @e remove vision_target
kill @e[tag=vision_target_marker]
summon marker ~ ~ ~ {Tags:["vision_target", "vision_target_marker"]}
execute as @a[tag=user.playing,distance=..50] at @s if function lito:creaking/vision_check/start run return 1
return 0