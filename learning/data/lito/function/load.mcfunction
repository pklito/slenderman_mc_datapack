# This function runs once when the data pack is loaded. This happens when the world/server starts, and every time "/reload" is ran.

# Each command goes on a separate line and they run one after each other

scoreboard objectives add player.tired dummy
scoreboard objectives add player.stamina dummy
scoreboard objectives add player.max_stamina dummy
scoreboard objectives add player.target_hunger dummy

scoreboard objectives add temp dummy

scoreboard objectives add raycast dummy
scoreboard objectives add flashlight_cooldown dummy
scoreboard objectives add item.flashlight_state dummy
scoreboard objectives add item.night_vision_on dummy

scoreboard objectives add sprinting dummy

# core.slender_distance, player sees slenderman at a distance (value is distance at 0.1 meters)
# core.player_distance, actual distance from slenderman
# core.seen, does slenderman see the player
scoreboard objectives add core.slender_distance dummy
scoreboard objectives add core.sees_slender dummy
scoreboard objectives add core.seen dummy
scoreboard objectives add core.fear dummy

scoreboard objectives add VAR dummy

scoreboard objectives add CONST dummy
scoreboard players set _6 CONST 6

scoreboard players set _80 CONST 80
scoreboard players set _4 CONST 4
scoreboard players set _100 CONST 100
scoreboard players set _1000 CONST 1000

scoreboard players set _200 CONST 200
scoreboard players set _120 CONST 120
scoreboard players set _10 CONST 10
scoreboard players set _12 CONST 12

scoreboard objectives add sl_entity_action dummy
scoreboard objectives add sl_entity_chasing dummy
#scoreboard objectives add sl_entity_angry dummy

scoreboard objectives add sound.piano dummy
scoreboard objectives add sound.music dummy
scoreboard objectives add sound.static dummy

scoreboard objectives add static_flash dummy

scoreboard objectives add page_activated dummy

scoreboard objectives add dev.config dummy
tellraw @a[tag=debug] {"text":"Forceloading chunks...","color":"green"}
forceload remove all
forceload add 341 -465 526 -770
forceload add 529 -770 654 -465

# Just in case, kill leftover visual markers
kill @e[tag=debug.die]
kill @e[tag=move_option,type=marker]
#forceload add 700 -200