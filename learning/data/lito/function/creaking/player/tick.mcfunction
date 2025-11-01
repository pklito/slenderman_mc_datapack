# Assumes core has been calculated


execute unless score @s static_flash matches 0.. run function lito:creaking/player/static

scoreboard players remove @s[scores={static_flash=0..}] static_flash 1
execute if score @s static_flash matches 0 run function lito:creaking/player/_flash_end


effect give @s[scores={core.fear=2000..}] levitation 1 1 true

kill @s[scores={core.fear=2300..},gamemode=adventure]
scoreboard players set @s[scores={core.fear=2300..},gamemode=adventure] core.fear 0