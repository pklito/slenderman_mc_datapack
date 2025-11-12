scoreboard players operation current_id we.id = @s we.id

# Create marker if not existent
function worldedit:effect/create_pointer

# Select the marker thing
execute as @e[tag=we.pointer_marker] if score @s we.id = current_id we.id run tag @s add we.active
tp @e[tag=we.active,tag=we.pointer_marker] ~ ~ ~

# Done
tag @e[] remove we.active