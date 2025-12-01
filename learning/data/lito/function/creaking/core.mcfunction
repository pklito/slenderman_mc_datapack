
##  ==== core.sees_slender ==== ##
scoreboard players set @a core.sees_slender 0
tag @e remove vision_target
tag @n[tag=slenderman_entity] add vision_target
execute as @a[tag=user.playing] at @s store success score @s core.sees_slender run function lito:creaking/vision_check/start

# If looking at slender increase fear
execute as @a[tag=user.playing, scores={core.sees_slender=1}] at @s run function lito:creaking/player/increase_fear
execute as @a[tag=user.playing] at @s run function lito:creaking/player/lower_fear

##  ==== core.slender_distance ==== ##
##  ==== core.seen ==== ##
execute as @a[tag=user.playing] at @s run function lito:creaking/slender_vision_check/update_core