tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text": ""}
tellraw @s {"text":"|                                                                              |","color":"dark_gray","strikethrough":true}
tellraw @s ["               Slenderman development",{"text":" / ","color":"gray"},"Global Settings               "]
tellraw @s {"text":"|                                                                              |","color":"dark_gray","strikethrough":true}

execute if score #showMove dev.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function lito:config/show_move_disabled"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Slenderman TP visualizing",{"text":".","color":"red"},{"text":"\nWhen enabled, Markers will show slenderman's new location.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Slenderman TP visualizing"]
execute unless score #showMove dev.config matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function lito:config/show_move_enabled"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Slenderman TP visualizing",{"text":".","color":"green"},{"text":"\nWhen enabled, Markers will show slenderman's new location.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Slenderman TP visualizing"]
# execute if score #printMove dev.config matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function lito:config/show_move_disabled"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Slenderman TP visualizing",{"text":".","color":"red"},{"text":"\nWhen enabled, Markers will show slenderman's new location.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Slenderman TP visualizing"]
# execute unless score #zzz dev.config matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function lito:config/show_move_enabled"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Slenderman TP visualizing",{"text":".","color":"green"},{"text":"\nWhen enabled, Markers will show slenderman's new location.","color":"gray"},{"text":"\nDefault: Disabled","color":"dark_gray"}]}}," Slenderman TP visualizing"]

tellraw @s ["",{"text":"[ C ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @n[tag=slenderman_entity] sl_entity_chasing "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to set slenderman chasing behavior.","color":"gray"},{"text":"\nTrue: 1, False: 0","color":"dark_gray"}]}}," Slender Chasing ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@n[tag=slenderman_entity]","objective":"sl_entity_chasing"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s [{"text":" "},{"text":"[Randomize pages]","color": "yellow","clickEvent": {"action":"run_command","value": "/function lito:misc/randpages"}}]
# ✎
tellraw @s [{"text":"                                                                           ","color":"dark_gray","strikethrough":true},{"text": "[>]","strikethrough":false,"color": "gray","clickEvent": {"action": "run_command","value": "/function lito:config/config2"}},{"text":"  ","color":"dark_gray","strikethrough":true}]