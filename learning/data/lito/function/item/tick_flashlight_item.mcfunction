execute if entity @s[tag=!old] positioned ~ ~-1.158 ~ run scoreboard players set @p[gamemode=!spectator,distance=..3,tag=player] item.threw_flashlight 1
execute if entity @s[tag=!old] store result score @s item.battery run data get entity @s Item.components."minecraft:custom_model_data".floats[0] 1
execute if entity @s[tag=!old] store result score @s item.flashlight_state run data get entity @s Item.components."minecraft:custom_model_data".flags[0] 1

execute if entity @s[scores={item.flashlight_state=1,item.battery=1..}] run summon minecraft:marker ~ ~ ~ {Tags:["light"]}
execute if entity @s[scores={item.flashlight_state=1,item.battery=1..}] run setblock ~ ~ ~ light[level=5]

tag @s add old
