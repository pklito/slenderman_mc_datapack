scoreboard players operation current_id we.id = @s we.id

# Create marker if not existant
scoreboard players set return we.temp 0
execute as @e[type=marker,tag=we.pointer_marker] if score @s we.id = current_id we.id run scoreboard players set return we.temp 1
execute if score return we.temp matches 0 run summon marker ~ ~ ~ {Tags:["we.pointer_marker","we.active"]}
execute if score return we.temp matches 0 run scoreboard players operation @n[tag=we.active] we.id = current_id we.id

# Select the marker thing
execute as @e[type=marker] if score @s we.id = current_id we.id run tag @s add we.active
tp @e[type=marker,tag=we.active,tag=we.pointer_marker] ~ ~ ~

# Done
tag @e[type=marker] remove we.active