# should be only when slender is awake
execute unless score @s sound_music matches 1.. run playsound slender:ambient.drums master @s ~ ~100 ~ 1 1 1
execute unless score @s sound_music matches 1.. run scoreboard players set @s sound_music 2400
scoreboard players remove @s sound_music 1

# Static
scoreboard players remove @s sound_static 1
scoreboard players set @s[scores={sound_static=..0}] sound_static 0
stopsound @s[scores={sound_static=..0}] * slender:slender.static_heavy
stopsound @s[scores={sound_static=..0}] * slender:slender.static_medium
stopsound @s[scores={sound_static=..0}] * slender:slender.static_light

execute if score @s[scores={sound_static=..0}] slender_fear matches 100..500 run playsound slender:slender.static_light hostile @s ~ ~ ~ 0.5 1
execute if score @s[scores={sound_static=..0}] slender_fear matches 501..1099 run playsound slender:slender.static_medium hostile @s ~ ~ ~ 0.5 1
execute if score @s[scores={sound_static=..0}] slender_fear matches 1100.. run playsound slender:slender.static_heavy hostile @s ~ ~ ~ 1 1
scoreboard players set @s[scores={sound_static=..0, slender_fear=100..}] sound_static 45

# Piano
execute unless score @s sound_slender matches -2147483648..2147483647 run scoreboard players set @s sound_slender 0
scoreboard players set @s[scores={slender_fear=1..45, sound_slender=0}] sound_slender 50
playsound slender:slender.piano hostile @s[scores={slender_fear=46..70,sound_slender=0}] ~ ~ ~ 1 1
scoreboard players set @s[scores={slender_fear=46..70, sound_slender=0}] sound_slender 800
scoreboard players remove @s[scores={slender_fear=0,sound_slender=1..}] sound_slender 1