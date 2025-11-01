# Assumes core has been calculated

function lito:creaking/player/static

kill @s[scores={core.fear=1900..},gamemode=adventure]
scoreboard players set @s[scores={core.fear=1900..},gamemode=adventure] core.fear 0