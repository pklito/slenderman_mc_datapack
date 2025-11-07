execute unless entity @n[tag=slenderman_entity] run return fail
execute if score @s player.dying matches 1.. run return fail
execute facing entity @n[tag=slenderman_entity] eyes rotated ~ 0 positioned ~ 5.5 ~ run tp @n[tag=slenderman_entity] ^ ^ ^2
scoreboard players set @s player.dying 1

scoreboard players set @s sound.piano 800
playsound slender:slender.piano master @s