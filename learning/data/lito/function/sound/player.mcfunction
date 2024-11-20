# should be only when slender is awake
execute if entity @n[type=creaking] unless score @s sound_music matches 1.. run playsound slender:ambient.drums music @s ~ ~100 ~ 1 1 1
execute unless score @s sound_music matches 1.. run scoreboard players set @s sound_music 2400
scoreboard players remove @s sound_music 1

# Static
scoreboard players remove @s sound_static 1
scoreboard players set @s[scores={sound_static=..0}] sound_static 0

execute if score @s[scores={sound_static=..0}] slender_fear matches 100..500 run playsound slender:slender.static_light hostile @s ~ ~ ~ 0.5 1
execute if score @s[scores={sound_static=..0}] slender_fear matches 501..1099 run playsound slender:slender.static_medium hostile @s ~ ~ ~ 0.5 1
execute if score @s[scores={sound_static=..0}] slender_fear matches 1100.. run playsound slender:slender.static_heavy hostile @s ~ ~ ~ 1 1
scoreboard players set @s[scores={sound_static=..0, slender_fear=100..}] sound_static 45