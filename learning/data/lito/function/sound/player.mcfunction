# should be only when slender is awake
execute unless score @s sound.music matches 1.. run playsound slender:ambient.drums ambient @s ~ ~100 ~ 1 1 1
execute unless score @s sound.music matches 1.. run scoreboard players set @s sound.music 2400
scoreboard players remove @s sound.music 1

# Static
scoreboard players remove @s sound.static 1
scoreboard players set @s[scores={sound.static=..0}] sound.static 0
# stopsound @s[scores={sound.static=..0}] * slender:slender.static_heavy
stopsound @s[scores={sound.static=..0}] * slender:slender.static_medium
stopsound @s[scores={sound.static=..0}] * slender:slender.static_light

execute if score @s[scores={sound.static=..0}] core.fear matches 100..500 run playsound slender:slender.static_light hostile @s ~ ~ ~ 0.5 1
execute if score @s[scores={sound.static=..0}] core.fear matches 501..1099 run playsound slender:slender.static_medium hostile @s ~ ~ ~ 0.4 1
execute if score @s[scores={sound.static=..0}] core.fear matches 1100.. run playsound slender:slender.static_medium hostile @s ~ ~ ~ 0.5 1
execute store result score @s[scores={sound.static=..0, core.fear=100..}] sound.static run random value 20..35

# Piano
execute unless score @s sound.piano matches -2147483648..2147483647 run scoreboard players set @s sound.piano 0
scoreboard players set @s[scores={core.fear=1..45, sound.piano=0}] sound.piano 20
playsound slender:slender.piano hostile @s[scores={core.fear=46..70,sound.piano=0}] ~ ~ ~ 1 1
scoreboard players set @s[scores={core.fear=46..70, sound.piano=0}] sound.piano 800
scoreboard players remove @s[scores={core.fear=0,sound.piano=1..}] sound.piano 1