execute store result score @s temp run time query gametime
scoreboard players operation @s temp %= _24 CONST
scoreboard players operation @s CONST = @s temp

execute if entity @s[scores={temp=0..3}] rotated ~5 ~5 run return run function lito:light/player
execute if entity @s[scores={temp=4..7}] rotated ~5.5 ~6 run return run function lito:light/player
execute if entity @s[scores={temp=8..9}] rotated ~5.2 ~6.5 run return run function lito:light/player
execute if entity @s[scores={temp=10..11}] rotated ~5 ~5.9 run return run function lito:light/player
execute if entity @s[scores={temp=12..15}] rotated ~4.5 ~4.5 run return run function lito:light/player
execute if entity @s[scores={temp=16..19}] rotated ~4.6 ~4 run return run function lito:light/player
execute if entity @s[scores={temp=20..23}] rotated ~4.8 ~4.3 run return run function lito:light/player

