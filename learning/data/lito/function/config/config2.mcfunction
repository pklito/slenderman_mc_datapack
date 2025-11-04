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
tellraw @s ["               Slenderman development",{"text":" / ","color":"gray"},"Page 2               "]
tellraw @s {"text":"|                                                                              |","color":"dark_gray","strikethrough":true}


tellraw @s [{"text":"Storage modifiers:   "},{"text":"[Store tree]","color": "red","clickEvent": {"action":"suggest_command","value": "/function lito:misc/storetree"}},\
                              {"text":"   "},{"text":"[Store page]","color": "red","clickEvent": {"action":"suggest_command","value": "/function lito:misc/storepage {location:"}}]
tellraw @s [{"text": "Summons:            "},{"text":"[Place tree]","color": "gold","clickEvent": {"action":"suggest_command","value": "/function lito:misc/randtree"}},\
                {"text":" [Slenderman]","clickEvent":{"action":"run_command","value": "/execute at @s run function lito:summon"}}]
tellraw @s [{"text": "misc: "},{"text":"[randomize page]","color": "gold","clickEvent": {"action":"suggest_command","value": "/execute as @n[tag=page] store result entity @s Item.components.\"minecraft:custom_model_data\".floats[0] float 1 run random value 1..9"}}]

tellraw @s [{"text":"   ","color":"dark_gray","strikethrough":true},{"text": "[<]","strikethrough":false,"color": "gray","clickEvent": {"action": "run_command","value": "/function lito:config"}},{"text":"                                                                       ","color":"dark_gray","strikethrough":true}]