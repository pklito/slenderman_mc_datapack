advancement revoke @s only worldedit:tool_spread

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
function worldedit:util/activate_pointers
execute at @n[tag=we.active,tag=we.pointer_marker] run spreadplayers ~ ~ 3 10 false @e[tag=we.extra_markers]
scoreboard players operation @e[tag=we.extra_markers] we.id = @s we.id