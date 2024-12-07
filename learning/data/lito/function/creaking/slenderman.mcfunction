execute facing entity @p[tag=player,gamemode=adventure] feet run rotate @s ~ 0
execute unless entity @a[tag=player,gamemode=adventure] run return fail

execute unless score @s sl_entity_action matches 1.. unless entity @a[tag=player,scores={slender_distance=0..}] run function lito:creaking/action/action

execute store result score @s[scores={sl_entity_action=..0}] sl_entity_action run random value 60..160

# execute if predicate {condition:"random_chance",chance:0.03} run scoreboard players remove @s sl_entity_action 10
scoreboard players remove @s sl_entity_action 1