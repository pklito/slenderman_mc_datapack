execute as @a[tag=player] at @s run fill ~-14 ~-3 ~-14 ~14 ~14 ~14 air replace minecraft:light
execute at @e[tag=light] run fill ~ ~ ~ ~ ~ ~ air replace light

tag @e[tag=light] remove light_used
scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] item.flashlight_state 2
scoreboard players set @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] item.flashlight_state 1

execute as @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2, item.night_vision_on = 0, sprinting=0}] at @s run function lito:light/player
execute as @a[tag=player,gamemode=!spectator,scores={item.flashlight_state=2, item.night_vision_on = 0, sprinting= 1}] rotated ~5 ~2 at @s run function lito:light/player


kill @e[tag=light,tag=!light_used]

# # # Effects and post processing # # #
effect give @a[tag=player,scores={item.night_vision_on=1}] minecraft:blindness 3 10 true
effect clear @a[tag=player,scores={item.night_vision_on=0}] minecraft:blindness

effect clear @a night_vision
effect give @a[tag=player,scores={item.flashlight_state=2, sprinting=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] minecraft:night_vision 20 0 true
effect give @a[tag=player,scores={item.flashlight_state=2, sprinting=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{flashlight:true}}}}] minecraft:night_vision 2 0 true


# Particle 
execute as @a[tag=player] at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.4, 1., 0.6]} ^ ^1 ^-22 0 0 0 0 1 force @s
execute as @a[tag=player] at @s run particle minecraft:entity_effect{color:[0.996078431372549, 0.4, 0., 0.6]} ^ ^1 ^30 0 0 0 0 1 normal @s