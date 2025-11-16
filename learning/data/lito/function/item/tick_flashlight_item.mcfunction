execute if entity @s[tag=!old] positioned ~ ~-1.158 ~ run scoreboard players set @p[gamemode=!spectator,distance=..3,tag=player] item.threw_flashlight 1
execute if entity @s[tag=!old] store result score @s item.battery run data get entity @s Item.components."minecraft:custom_model_data".floats[0] 10
execute if entity @s[tag=!old] store result score @s item.flashlight_state run data get entity @s Item.components."minecraft:custom_model_data".flags[0] 1
execute if entity @s[tag=!old] run data merge entity @s {Item:{components:{"minecraft:custom_data":{dropped:true}}}}

execute if entity @s[scores={item.flashlight_state=1,item.battery=1..}] run summon minecraft:marker ~ ~ ~ {Tags:["light"]}
execute if entity @s[scores={item.flashlight_state=1,item.battery=1..}] run setblock ~ ~ ~ light[level=5]

scoreboard players add @s[scores={item.flashlight_state=1,item.battery=1..}] item.battery_timer 1
scoreboard players remove @s[scores={item.battery_timer=180..}] item.battery 5
scoreboard players set @s[scores={item.battery=..0}] item.battery 0
execute store result entity @s[scores={item.battery_timer=180..}] Item.components."minecraft:custom_model_data".floats[0] float 0.1 run scoreboard players get @s item.battery
scoreboard players set @s[scores={item.battery_timer=180..}] item.battery_timer 0


tag @s add old
