# ran by player creating the child, current_id is the id of the player
scoreboard players set return we.temp 0
execute as @e[tag=we.pointer_marker] if score @s we.id = current_id we.id run scoreboard players set return we.temp 1
execute if score return we.temp matches 0 run function worldedit:effect/create_pointer
execute if score return we.temp matches 0 run scoreboard players operation @n[tag=we.new] we.id = current_id we.id
tag @e remove we.new