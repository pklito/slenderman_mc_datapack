execute facing entity @p[tag=player,gamemode=adventure] feet run rotate @s ~ 0
execute unless entity @a[tag=player,gamemode=adventure] run return fail

execute unless score @s sl_entity_action matches 1.. unless entity @a[tag=player,scores={slender_distance=0..}] run function lito:creaking/action/action

# Debug
execute unless score @s sl_entity_action matches 1.. unless entity @a[tag=player,scores={slender_distance=0..}] at @s run playsound block.note_block.banjo master @a ~ ~ ~ 1 1 0.5
execute unless score @s sl_entity_action matches 1.. unless entity @a[tag=player,scores={slender_distance=0..}] at @s run summon zombie ~ ~ ~ {NoAI:true,Health:4,active_effects:[{id:glowing,duration:-1},{id:wither,duration:-1}],Tags:["debug","debug.die"]}

tp @e[type=zombie,tag=debug.die] ~ -500 ~
kill @e[type=zombie,tag=debug.die]

execute store result score @s[scores={sl_entity_action=..0}] sl_entity_action run random value 60..160

# execute if predicate {condition:"random_chance",chance:0.03} run scoreboard players remove @s sl_entity_action 10
scoreboard players remove @s sl_entity_action 1