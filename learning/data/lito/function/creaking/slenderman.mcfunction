execute facing entity @p[tag=user.playing] feet run rotate @s ~ 0
execute unless entity @a[tag=user.playing] run return fail

execute unless entity @s[scores={ai.busy=1}] as @p[tag=user.playing,distance=..1,gamemode=adventure] at @s run function lito:creaking/death/kill

scoreboard players set @s ai.just_teleported 0
execute if score #slenderAI dev.config matches 0 run return fail

# Remember if slenderman is seen
scoreboard players set @s core.seen 0
execute unless entity @a[tag=user.playing,scores={core.sees_slender=1..}] run scoreboard players set @s core.seen 1

# If next action, unless player is looking at it
execute unless score @s sl_entity_action matches 1.. unless score @s core.seen matches 1 unless function lito:creaking/action/action_wander run scoreboard players set @s ai.just_teleported 1
execute if score @s sl_entity_chasing matches 1 unless score @s core.seen matches 1 at @s run function lito:creaking/action/action_chase



# Debug
execute if score #showMove dev.config matches 1 unless score @s sl_entity_action matches 1.. unless score @s core.seen matches 1 at @s run function lito:misc/visual_marker

execute store result score @s[scores={sl_entity_action=..0}] sl_entity_action run random value 60..160

# execute if predicate {condition:"random_chance",chance:0.03} run scoreboard players remove @s sl_entity_action 10
scoreboard players remove @s sl_entity_action 1