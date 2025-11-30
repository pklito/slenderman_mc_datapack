# Removes all scoreboards so  ican remove duplicates/ deprecates
scoreboard objectives remove player.dying
scoreboard objectives remove player.deathscreen
scoreboard objectives remove player.override_static
scoreboard objectives remove player.tired
scoreboard objectives remove player.stamina
scoreboard objectives remove player.max_stamina
scoreboard objectives remove player.target_hunger

scoreboard objectives remove temp

scoreboard objectives remove raycast
scoreboard objectives remove flashlight_cooldown
scoreboard objectives remove item.flashlight_state
scoreboard objectives remove item.night_vision_on

scoreboard objectives remove player.sprinting

scoreboard objectives remove core.slender_distance
scoreboard objectives remove core.sees_slender
scoreboard objectives remove core.seen
scoreboard objectives remove core.fear

scoreboard objectives remove VAR

scoreboard objectives remove CONST


scoreboard objectives remove misc.math

scoreboard objectives remove ai.busy
scoreboard objectives remove ai.just_teleported
scoreboard objectives remove sl_entity_action
scoreboard objectives remove sl_entity_chasing

scoreboard objectives remove sound.piano
scoreboard objectives remove sound.music
scoreboard objectives remove sound.static

scoreboard objectives remove static_flash

scoreboard objectives remove page_activated

scoreboard objectives remove dev.sprint
scoreboard objectives remove dev.config
forceload remove all

kill @e[tag=debug.die]
kill @e[tag=move_option,type=marker]
