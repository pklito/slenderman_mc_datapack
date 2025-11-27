execute as @a[tag=player] at @s run fill ~-14 ~-3 ~-14 ~14 ~14 ~14 air replace minecraft:light
execute as @a[tag=fake_player_light] at @s run fill ~-14 ~-3 ~-14 ~14 ~14 ~14 air replace minecraft:light
execute at @e[tag=light] run fill ~ ~ ~ ~ ~ ~ air replace light
kill @e[tag=light]
tag @e[tag=light] remove light_used

# Go through all the items, modify item.threw_flashlight
function lito:item/detect_thrown_flashlights

# Set player.holding_flashing
scoreboard players set @a player.holding_flashlight 0
scoreboard players set @a item.picked_up_flashlight 0
scoreboard players set @a[tag=player,nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] player.holding_flashlight 1
scoreboard players set @a[tag=player,nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true,dropped:true}}}}] item.picked_up_flashlight 1
execute as @a[scores={item.picked_up_flashlight=1}] store result score @s item.flashlight_state run data get entity @s SelectedItem.components."minecraft:custom_model_data".flags[0] 1
execute as @a[scores={item.picked_up_flashlight=1}] run item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{dropped:false}}

# Set player.holding_flashing
execute as @a run scoreboard players operation @s item.old_flashlight_id = @s item.flashlight_id
scoreboard players set @a item.flashlight_id 0
execute as @a[scores={player.holding_flashlight=1}] unless data entity @s SelectedItem.components."minecraft:custom_data".id run function lito:item/flashlight_id
execute as @a[scores={player.holding_flashlight=1}] store result score @s item.flashlight_id run data get entity @s SelectedItem.components."minecraft:custom_data".id

# Changed items (set state to 1 if you want to let them stay pressed)
execute as @a[tag=player,gamemode=!spectator,scores={item.old_flashlight_id=1..,item.flashlight_state=2,item.threw_flashlight=0}] at @s unless score @s item.old_flashlight_id = @s item.flashlight_id run function lito:item/flashlight_off_ux_all
execute as @a[tag=player,gamemode=!spectator,scores={item.old_flashlight_id=1..,item.flashlight_state=2,item.threw_flashlight=0}] at @s unless score @s item.old_flashlight_id = @s item.flashlight_id run scoreboard players set @s item.flashlight_state 1

execute as @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=1,player.holding_flashlight=1,item.picked_up_flashlight=0}] at @s run function lito:item/flashlight_on_ux

scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=1,player.holding_flashlight=1}] item.flashlight_state 2
scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2,player.holding_flashlight=0}] item.flashlight_state 1

scoreboard players set IGNORE_BATTERY temp 1
execute if score #flashBlocks dev.config matches 1 as @e[tag=fake_player_light] align xyz positioned ~0.5 ~ ~0.5 at @s run function lito:light/player
scoreboard players set IGNORE_BATTERY temp 0

# Set if player is using a flashlight
scoreboard players set @a player.flashing_light 0
scoreboard players reset @a item.battery
execute as @a[scores={player.holding_flashlight=1}] store result score @s item.battery run data get entity @s SelectedItem.components."minecraft:custom_model_data".floats[0] 10
scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2,item.battery=1..}] player.flashing_light 1
#,nbt=!{SelectedItem:{components:{"minecraft:custom_model_data":{floats:[0.0f]}}}}
#/item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",floats:{values:[10.0f],mode:"replace_all"}}
execute if score #flashBlocks dev.config matches 1 as @a[scores={player.flashing_light=1, player.sprinting=0}] at @s align xyz positioned ~0.5 ~ ~0.5 anchored eyes run function lito:light/player
execute if score #flashBlocks dev.config matches 1 as @a[scores={player.flashing_light=1, item.night_vision_on = 0, player.sprinting= 1}] at @s align xyz positioned ~0.5 ~ ~0.5 anchored eyes run function lito:light/running_angle

execute as @a unless score @s item.battery_timer matches -2147483648..2147483647 run scoreboard players set @s item.battery_timer 180
scoreboard players remove @a[scores={player.flashing_light=1}] item.battery_timer 1
execute as @a if entity @s[scores={item.battery_timer=..0}] run function lito:item/decrease_battery
scoreboard players set @a[scores={item.battery_timer=..0}] item.battery_timer 180


# # # Effects and post processing # # #
effect give @a[tag=player,scores={item.night_vision_on=1}] minecraft:blindness 3 10 true
effect clear @a[tag=player,scores={item.night_vision_on=0}] minecraft:blindness

effect clear @a[tag=player] night_vision
execute if score #flashCircle dev.config matches 1 run effect give @a[tag=player,scores={player.flashing_light=1, player.sprinting=0}] minecraft:night_vision 20 0 true
execute if score #flashCircle dev.config matches 1 run effect give @a[tag=player,scores={player.flashing_light=1, player.sprinting=1}] minecraft:night_vision 2 0 true
