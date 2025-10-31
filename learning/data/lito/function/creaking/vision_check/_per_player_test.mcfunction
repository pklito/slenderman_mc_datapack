# Called as the player at the player testing vision
# vision_target is the target location
function lito:creaking/vision_check/start
execute if score RAYCAST core.slender_distance matches 0.. run return 1
return fail