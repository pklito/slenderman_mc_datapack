function lito:creaking/player_vision

scoreboard players remove @s slender_fear 10
scoreboard players operation @s temp = @s slender_fear
scoreboard players operation @s temp /= _100 CONST
scoreboard players operation @s slender_fear -= @s temp

scoreboard players set @s[scores={slender_fear=..0}] slender_fear 0
execute store result storage lito:game temp.val float 0.0006 run scoreboard players get @s slender_fear
execute if score @s slender_fear matches 1..1550 run function lito:creaking/particle with storage lito:game temp
execute if score @s slender_fear matches 0 run particle minecraft:entity_effect{color:[0.996078431372549, 0.8, 0.0, 0.8]} ~ ~ ~ 0 0 0 0 1 normal @s