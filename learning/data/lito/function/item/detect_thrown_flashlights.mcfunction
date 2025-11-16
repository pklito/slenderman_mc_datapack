scoreboard players set @a item.threw_flashlight 0
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{flashlight:true}}}}] at @s run function lito:item/tick_flashlight_item