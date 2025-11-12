scoreboard players operation current_id we.id = @s we.id

# Create marker if not existent
function worldedit:effect/attempt_pointer

# Select the marker thing
function worldedit:util/activate_pointers
tp @e[tag=we.active,tag=we.pointer_marker] ~ ~ ~

