# Input run as @s, score @s player.target_hunger
execute store result score @s temp run data get entity @s foodLevel
execute if score @s temp < @s player.target_hunger run effect give @s saturation 1 0
execute if score @s temp > @s player.target_hunger run effect give @s hunger 1 0

