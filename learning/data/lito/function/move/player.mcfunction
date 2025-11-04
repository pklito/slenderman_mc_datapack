execute if score @s player.dying matches 1.. run return fail
execute if predicate lito:sprinting run scoreboard players set @s player.sprinting 1
execute unless predicate lito:walking run scoreboard players set @s player.sprinting 0
scoreboard players set @s[nbt={foodLevel:6}] player.sprinting 0
scoreboard players set @s[nbt={foodLevel:5}] player.sprinting 0
scoreboard players set @s[nbt={foodLevel:4}] player.sprinting 0
scoreboard players set @s[nbt={foodLevel:3}] player.sprinting 0
scoreboard players set @s[nbt={foodLevel:2}] player.sprinting 0
scoreboard players set @s[nbt={foodLevel:1}] player.sprinting 0
scoreboard players set @s[nbt={foodLevel:0}] player.sprinting 0
# too lazy to do this properly lol
effect clear @s slowness
execute unless score @s player.sprinting matches 1 run effect give @s slowness 1 1 true
execute if score @s player.sprinting matches 1 run effect give @s slowness 1 0 true
