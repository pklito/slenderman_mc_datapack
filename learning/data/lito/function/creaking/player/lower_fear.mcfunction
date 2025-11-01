execute unless score @s core.sees_slender matches 1 run scoreboard players remove @s core.fear 4
scoreboard players operation @s temp = @s core.fear
scoreboard players operation @s temp /= _100 CONST
execute unless score @s core.sees_slender matches 1 run scoreboard players operation @s core.fear -= @s temp