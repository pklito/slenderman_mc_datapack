advancement revoke @s only worldedit:tool_clear_trees

# hold

function worldedit:util/activate_pointers
execute at @e[tag=we.active] run fill ~-1 5 ~-1 ~1 25 ~1 air replace #lito:trees

execute unless score @s we.item.already_clicked matches 0 run return 0

# hold
