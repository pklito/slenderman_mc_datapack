# Teleport in a ring around target location
execute if score #showMove dev.config matches 1 run tellraw @a[tag=debug] [{"text":"[ TP ]","color":"gray"},{"text":"RING","color":"white"}]
scoreboard players set COUNT temp 0
execute as @e[tag=temp_tp_ring] run scoreboard players add COUNT temp 1
execute if score COUNT temp matches ..20 run function lito:misc/summon_markers
spreadplayers ~ ~ 6 80 false @e[tag=temp_tp_ring]

execute as @e[sort=nearest,tag=temp_tp_ring,distance=30..] at @s positioned ~ 5.5 ~ unless function lito:creaking/vision_check/test_position run return run tp @n[tag=slenderman_entity] ~ ~ ~

# fail?
tellraw @a[tag=debug] [{"text":"[","color":"gray"},{"text":"RING failed","color":"red"},{"text":"]","color":"gray"}]