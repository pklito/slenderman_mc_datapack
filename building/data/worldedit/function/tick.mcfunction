function worldedit:item/hold_score_logic

# ids
execute as @a unless score @s we.id matches 1.. run scoreboard players set @s we.id 0
execute if entity @a[scores={we.id=0}] run scoreboard players add COUNT we.id 1
scoreboard players operation @r[scores={we.id=0}] we.id = COUNT we.id

# Item hold
execute as @a at @s unless entity @s[nbt=!{SelectedItem:{components:{"minecraft:item_name":"\"pointer\""}}},nbt=!{Inventory:[{Slot:-106b,components:{"minecraft:item_name":"\"pointer\""}}]}] run function worldedit:effect/pointer_tick

# execute at @e[type=marker,tag=we.pointer_marker] run function worldedit:util/particles with storage worldedit:dev