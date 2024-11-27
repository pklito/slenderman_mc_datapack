execute if predicate lito:sprinting run scoreboard players set @s sprinting 1
execute unless predicate lito:walking run scoreboard players set @s sprinting 0

effect clear @s slowness
execute unless score @s sprinting matches 1 run effect give @s slowness 1 1 true
execute if score @s sprinting matches 1 run effect give @s slowness 1 0 true
