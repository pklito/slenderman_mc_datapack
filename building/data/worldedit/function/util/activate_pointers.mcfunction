tag @e remove we.active
scoreboard players operation select we.id = @s we.id
execute as @e[tag=we.pointer_marker] if score @s we.id = select we.id run tag @s add we.active
