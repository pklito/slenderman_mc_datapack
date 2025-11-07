# Assumes core has been calculated
execute if score @s core.sees_slender matches 1 if score @n[tag=slenderman_entity] game.sl_just_teleported matches 1 run function lito:creaking/player/start_flash

# Set static thingy on
scoreboard players set @s player.override_static 0
execute if score @s static_flash matches 0.. run scoreboard players set @s player.override_static 1
execute if score @s player.deathscreen matches 1 run scoreboard players set @s player.override_static 1

execute if score @s player.override_static matches 0 run function lito:creaking/player/static

scoreboard players remove @s[scores={static_flash=0..}] static_flash 1
execute if score @s static_flash matches 0 run function lito:creaking/player/_flash_end


execute if entity @s[scores={core.fear=2300..,core.sees_slender=1},gamemode=adventure] unless entity @n[tag=slenderman_entity,scores={game.sl_busy=1}] run function lito:creaking/death/kill
