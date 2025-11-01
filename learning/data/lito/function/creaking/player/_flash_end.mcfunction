execute store result storage lito:game temp.val float 0.0003 run scoreboard players get @s core.fear
execute if score @s core.fear matches 250.. run function lito:creaking/player/particle_flash with storage lito:game temp
execute unless score @s core.fear matches 250.. run function lito:creaking/player/particle_flash {val:0.02}

stopsound @s master slender:slender.static_heavy
scoreboard players reset @s static_flash