advancement revoke @s only worldedit:tool_grass

# hold
function worldedit:util/activate_pointers
data merge storage worldedit:fill {input:{block:"grass_block",size:1}}
execute store result storage worldedit:fill input.size int 0.5 run scoreboard players get @s we.fill.ground_size
data modify storage worldedit:fill input.block set from entity @s SelectedItem.components."minecraft:item_model"
execute at @e[tag=we.active] run function worldedit:util/fill_normal with storage worldedit:fill input

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
title @s actionbar [{"text":"Fill percent: "},{"score": {"name": "@s","objective": "we.fill.percent.grass"}}]