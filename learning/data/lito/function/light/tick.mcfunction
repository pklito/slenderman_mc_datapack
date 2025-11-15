execute as @a[tag=player] at @s run fill ~-14 ~-3 ~-14 ~14 ~14 ~14 air replace minecraft:light
execute as @a[tag=fake_player_light] at @s run fill ~-14 ~-3 ~-14 ~14 ~14 ~14 air replace minecraft:light
execute at @e[tag=light] run fill ~ ~ ~ ~ ~ ~ air replace light
kill @e[tag=light]
tag @e[tag=light] remove light_used

execute as @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] at @s run function lito:item/flashlight_on_ux
execute as @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] at @s run function lito:item/flashlight_off_ux_all

scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] item.flashlight_state 2
scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] item.flashlight_state 1

execute if score #flashBlocks dev.config matches 1 as @e[tag=fake_player_light] align xyz positioned ~0.5 ~ ~0.5 at @s run function lito:light/player

# Set if player is using a flashlight
scoreboard players set @a player.flashing_light 0
scoreboard players reset @a item.battery
execute as @a[scores={item.flashlight_state=2}] store result score @s item.battery run data get entity @s SelectedItem.components."minecraft:custom_model_data".floats[0] 10
scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2,item.battery=1..}] player.flashing_light 1
#,nbt=!{SelectedItem:{components:{"minecraft:custom_model_data":{floats:[0.0f]}}}}
#/item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",floats:{values:[10.0f],mode:"replace_all"}}
execute if score #flashBlocks dev.config matches 1 as @a[scores={player.flashing_light=1, player.sprinting=0}] at @s align xyz positioned ~0.5 ~ ~0.5 run function lito:light/player
execute if score #flashBlocks dev.config matches 1 as @a[scores={player.flashing_light=1, item.night_vision_on = 0, player.sprinting= 1}] at @s align xyz positioned ~0.5 ~ ~0.5 rotated ~5 ~5 run function lito:light/player


# # # Effects and post processing # # #
effect give @a[tag=player,scores={item.night_vision_on=1}] minecraft:blindness 3 10 true
effect clear @a[tag=player,scores={item.night_vision_on=0}] minecraft:blindness

effect clear @a[tag=player] night_vision
execute if score #flashCircle dev.config matches 1 run effect give @a[tag=player,scores={player.flashing_light=1, player.sprinting=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] minecraft:night_vision 20 0 true
execute if score #flashCircle dev.config matches 1 run effect give @a[tag=player,scores={player.flashing_light=1, player.sprinting=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] minecraft:night_vision 2 0 true
