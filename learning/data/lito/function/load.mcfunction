# This function runs once when the data pack is loaded. This happens when the world/server starts, and every time "/reload" is ran.

# Each command goes on a separate line and they run one after each others

scoreboard objectives add player.hasDied deathCount

scoreboard objectives add player.dying dummy
scoreboard objectives add player.deathscreen dummy
scoreboard objectives add player.override_static dummy
scoreboard objectives add player.tired dummy
scoreboard objectives add player.stamina dummy
scoreboard objectives add player.max_stamina dummy
scoreboard objectives add player.target_hunger dummy
scoreboard objectives add player.flashing_light dummy
scoreboard objectives add player.holding_flashlight dummy

scoreboard objectives add temp dummy

scoreboard objectives add raycast dummy
scoreboard objectives add flashlight_cooldown dummy
scoreboard objectives add item.flashlight_state dummy
scoreboard objectives add item.night_vision_on dummy
scoreboard objectives add item.battery_timer dummy
scoreboard objectives add item.battery dummy
scoreboard objectives add item.flashlight_id dummy
scoreboard objectives add item.old_flashlight_id dummy
scoreboard objectives add item.threw_flashlight dummy
scoreboard objectives add item.picked_up_flashlight dummy


scoreboard objectives add player.sprinting dummy

# core.slender_distance, player sees slenderman at a distance (value is distance at 0.1 meters)
# core.player_distance, actual distance from slenderman
# core.seen, does slenderman see the player, is slenderman seen by players
scoreboard objectives add core.slender_distance dummy
scoreboard objectives add core.sees_slender dummy
scoreboard objectives add core.seen dummy
scoreboard objectives add core.fear dummy
scoreboard objectives add core.alive dummy


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
scoreboard players set _6966 CONST 6966
scoreboard players set _8888 CONST 8888
scoreboard players set _24 CONST 24


scoreboard objectives add misc.math dummy

# constants, current walking speeds, teleport timers, ETC
# constants.l0, constants of level 0 (0 pages collected)
scoreboard objectives add ai.constants dummy
scoreboard objectives add ai.constants.l0 dummy
scoreboard objectives add ai.constants.l1 dummy
scoreboard objectives add ai.constants.l2 dummy
scoreboard objectives add ai.constants.l3 dummy
scoreboard objectives add ai.constants.l4 dummy
scoreboard objectives add ai.constants.l5 dummy
scoreboard objectives add ai.constants.l6 dummy
scoreboard objectives add ai.constants.l7 dummy

scoreboard objectives add game.force_start_timer dummy
scoreboard objectives add game.pages_collected dummy

scoreboard objectives add ai.busy dummy
scoreboard objectives add ai.just_teleported dummy

scoreboard objectives add sl_entity_action dummy
scoreboard objectives add sl_entity_chasing dummy
#scoreboard objectives add sl_entity_angry dummy

scoreboard objectives add sound.piano dummy
scoreboard objectives add sound.music dummy
scoreboard objectives add sound.static dummy

scoreboard objectives add static_flash dummy

scoreboard objectives add page_activated dummy
scoreboard objectives add carrot_clicked minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dev.sprint dummy
scoreboard objectives add dev.config dummy
tellraw @a[tag=debug] {"text":"Forceloading chunks...","color":"green"}
forceload remove all
forceload add 341 -465 526 -770
forceload add 529 -770 654 -465

# Just in case, kill leftover visual markers
kill @e[tag=debug.die]
kill @e[tag=move_option,type=marker]
#forceload add 700 -200