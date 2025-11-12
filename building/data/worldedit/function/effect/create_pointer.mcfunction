# ran by player creating the child, current_id is the id of the player
scoreboard players set return we.temp 0
execute as @e[type=marker,tag=we.pointer_marker] if score @s we.id = current_id we.id run scoreboard players set return we.temp 1
execute if score return we.temp matches 0 run summon marker ~ ~ ~ {Tags:["we.pointer_marker","we.active"]}
execute if score return we.temp matches 0 run scoreboard players operation @n[tag=we.active] we.id = current_id we.id