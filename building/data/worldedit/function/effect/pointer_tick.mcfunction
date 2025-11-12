scoreboard players set @s we.input 0
scoreboard players set @s[scores={we.item.pointer_type=1}] we.input 50
scoreboard players set @s[scores={we.item.pointer_type=2}] we.input 120
scoreboard players set @s[scores={we.item.pointer_type=3}] we.input 300
scoreboard players set @s[scores={we.item.pointer_type=4}] we.input 1000
scoreboard players operation POINTER_LOOP we.input = @s we.input
execute if score POINTER_LOOP we.input matches 0 run return run function worldedit:effect/pointer_end
execute anchored eyes run function worldedit:util/pointer_raycast