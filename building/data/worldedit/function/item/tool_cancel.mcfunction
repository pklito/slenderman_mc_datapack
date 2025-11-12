advancement revoke @s only worldedit:tool_cancel

# hold

execute unless score @s we.item.already_clicked matches 0 run return 0
# click
scoreboard players operation select we.id = @s we.id
execute as @e[tag=we.pointer_marker] if score @s we.id = select we.id run kill @s