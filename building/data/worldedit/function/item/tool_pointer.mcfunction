advancement revoke @s only worldedit:tool_pointer

# hold

execute unless score @s we.item.already_clicked matches 0 run return 0

# click
scoreboard players add @s we.item.pointer_type 1
scoreboard players set @s[scores={we.item.pointer_type=5..}] we.item.pointer_type 0

title @s[scores={we.item.pointer_type=0}] actionbar {"text": "On self", "color": "aqua"}
title @s[scores={we.item.pointer_type=1}] actionbar [{"text":"5 ","color":"red"},{"text": "meters", "color": "aqua"}]
title @s[scores={we.item.pointer_type=2}] actionbar [{"text":"12 ","color":"red"},{"text": "meters", "color": "aqua"}]
title @s[scores={we.item.pointer_type=3}] actionbar [{"text":"30 ","color":"red"},{"text": "meters", "color": "aqua"}]
title @s[scores={we.item.pointer_type=4}] actionbar [{"text":"100 ","color":"red"},{"text": "meters", "color": "aqua"}]
