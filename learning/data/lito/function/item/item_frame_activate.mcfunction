scoreboard players set @s page_activated 1
title @a actionbar {"text": "A page has been collected...","italic": true,"color":"gray"}
execute as @a at @s run playsound minecraft:ambient.warped_forest.mood ambient @s
kill @n[distance=..10,type=item,nbt={Item:{id:"minecraft:map"}}]
kill @s