# Assumes core has been calculated

function lito:creaking/player/static

effect give @s[scores={core.fear=2000..}] levitation 1 1 true

kill @s[scores={core.fear=2300..},gamemode=adventure]
scoreboard players set @s[scores={core.fear=2300..},gamemode=adventure] core.fear 0