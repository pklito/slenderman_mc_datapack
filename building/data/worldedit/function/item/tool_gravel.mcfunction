advancement revoke @s only worldedit:tool_gravel

# hold
data merge storage worldedit:fill {input:{block:"gravel",fill_amount:0}}
data modify storage worldedit:fill input.block set from entity @s SelectedItem.components."minecraft:item_model"
execute store result storage worldedit:fill input.fill_amount float 0.01 run scoreboard players get @s we.fill.percent.gravel
function worldedit:util/activate_pointers
execute at @e[tag=we.active] positioned ~ 4 ~ run function worldedit:util/fill_macro_5x5 with storage worldedit:fill input

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
title @s actionbar [{"text":"Fill percent: "},{"score": {"name": "@s","objective": "we.fill.percent.gravel"}}]