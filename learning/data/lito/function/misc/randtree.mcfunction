execute store result score SIZE VAR run data get storage lito:trees base
execute store result score RAND VAR run random value 0..100
scoreboard players operation RAND VAR %= SIZE VAR
execute store result storage lito:trees temp.element int 1 run scoreboard players get RAND VAR
function lito:misc/_randtreepick with storage lito:trees temp
kill @s[type=egg]