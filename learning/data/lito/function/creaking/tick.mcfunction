execute unless entity @n[tag=slenderman_entity] run return fail
execute as @a[tag=player, gamemode=adventure] at @s run function lito:creaking/player

# Just to remove the effects
scoreboard players set @a[gamemode=creative] slender_fear 0
execute as @a[tag=player, gamemode=creative] at @s run function lito:creaking/player

execute as @n[tag=slenderman_entity] at @s run function lito:creaking/slenderman
