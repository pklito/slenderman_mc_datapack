execute if predicate lito:sprinting run scoreboard players set @s player.sprinting 1
execute unless predicate lito:walking run scoreboard players set @s player.sprinting 0

effect clear @s slowness
execute unless score @s player.sprinting matches 1 run effect give @s slowness 1 1 true
execute if score @s player.sprinting matches 1 run effect give @s slowness 1 0 true
