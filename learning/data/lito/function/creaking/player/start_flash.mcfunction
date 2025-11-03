execute unless score @s static_flash matches 0.. run playsound slender:slender.static_heavy master @s
execute unless score @s static_flash matches 0.. run function lito:creaking/player/particle_flash {val:0.9999}

scoreboard players set @s static_flash 2