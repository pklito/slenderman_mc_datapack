function worldedit:item/hold_score_logic

# ids
execute as @a unless score @s we.id matches 1.. run scoreboard players set @s we.id 0
execute if entity @a[scores={we.id=0}] run scoreboard players add COUNT we.id 1
scoreboard players operation @r[scores={we.id=0}] we.id = COUNT we.id

# Item hold
execute as @a at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:item_name":"\"pointer\""}}}] run function worldedit:effect/pointer_tick
