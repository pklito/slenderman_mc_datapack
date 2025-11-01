execute facing entity @p[tag=player,gamemode=adventure] feet run rotate @s ~ 0
execute unless entity @a[tag=player,gamemode=adventure] run return fail

# If next action, unless player is looking at it
execute unless score @s sl_entity_action matches 1.. if entity @a[tag=player,scores={core.sees_slender=0}] run function lito:creaking/action/action_wander
execute if score @s sl_entity_chasing matches 1 if entity @a[tag=player,scores={core.sees_slender=0}] at @s run function lito:creaking/action/action_chase

# Debug
execute unless score @s sl_entity_action matches 1.. if entity @a[tag=player,scores={core.sees_slender=0}] at @s run function lito:misc/visual_marker

execute store result score @s[scores={sl_entity_action=..0}] sl_entity_action run random value 60..160

# execute if predicate {condition:"random_chance",chance:0.03} run scoreboard players remove @s sl_entity_action 10
scoreboard players remove @s sl_entity_action 1