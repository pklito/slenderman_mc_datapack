advancement revoke @s only worldedit:tool_tree

# hold

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
function worldedit:util/activate_pointers
execute at @e[tag=we.active] positioned ~ 5 ~ run function lito:misc/randtree