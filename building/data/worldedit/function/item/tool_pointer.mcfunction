advancement revoke @s only worldedit:tool_pointer

# hold

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
scoreboard players add @s we.item.pointer_type 1
scoreboard players set @s[scores={we.item.pointer_type=4..}] we.item.pointer_type 0

title @s[scores={we.item.pointer_type=0}] actionbar "On self"
title @s[scores={we.item.pointer_type=1}] actionbar "3 meters"
title @s[scores={we.item.pointer_type=2}] actionbar "12 meters"
title @s[scores={we.item.pointer_type=3}] actionbar "100 meters"
