scoreboard players set @s[scores={core.fear=..0}] core.fear 0
execute store result storage lito:game temp.val float 0.0003 run scoreboard players get @s core.fear
execute if score @s core.fear matches 1..2300 run function lito:creaking/player/particle with storage lito:game temp
execute if score @s core.fear matches 0 run particle minecraft:entity_effect{color:[0.996078431372549, 0.8, 0.0, 0.8]} ~ ~ ~ 0 0 0 0 1 normal @s