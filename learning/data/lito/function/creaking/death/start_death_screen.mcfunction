scoreboard players set @s player.deathscreen 1
function lito:creaking/player/particle_flash {val:0.9999}
playsound slender:slender.static_heavy master @s

item replace entity @s weapon.offhand with stone[item_model="slender:slender"]