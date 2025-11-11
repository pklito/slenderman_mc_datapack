function worldedit:item/hold_score_logic
execute as @a at @s if entity @s[nbt={SelectedItem:{components:{"minecraft:item_name":"\"pointer\""}}}] run function worldedit:effect/pointer