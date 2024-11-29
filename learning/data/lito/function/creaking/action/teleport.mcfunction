summon marker ~ ~ ~ {Tags:["temp_tp"]}
scoreboard players set ITER temp 20
execute as @n[tag=temp_tp,type=marker] at @p[tag=player] positioned ~ ~ ~ unless function lito:creaking/action/teleport_loop run return fail

tp @s @n[tag=temp_tp]
kill @e[tag=temp_tp]