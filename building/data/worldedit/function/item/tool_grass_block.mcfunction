advancement revoke @s only worldedit:tool_grass

# hold
function worldedit:util/activate_pointers
execute at @e[tag=we.active] run fill ~-1 4 ~-1 ~1 4 ~1 grass_block replace air

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
title @s actionbar [{"text":"Fill percent: "},{"score": {"name": "@s","objective": "we.fill.percent.grass"}}]