# TP Around slenderman
execute if score #showMove dev.config matches 1 run tellraw @a[tag=debug] [{"text":"[ TP ]","color":"gray"},{"text":"local tp","color":"white"}]

summon marker ~ ~ ~ {Tags:["temp_tp"]}
scoreboard players set ITER temp 20
execute as @n[tag=temp_tp,type=marker] unless function lito:creaking/action/teleport_loop run return fail

tp @s @n[tag=temp_tp]
kill @e[tag=temp_tp]