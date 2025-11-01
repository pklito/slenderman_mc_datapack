# Run as player
tag @e remove vision_target
tag @n[tag=slenderman_entity] add vision_target
function lito:creaking/slender_vision_check/start
scoreboard players operation @s core.seen = RAYCAST core.seen
scoreboard players operation @s core.slender_distance = RAYCAST core.slender_distance
