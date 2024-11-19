scoreboard players set RAYCAST temp 0
execute facing entity @n[type=creaking] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.8] run return fail
execute facing entity @n[type=creaking] feet unless function lito:creaking/vision_loop run return fail

tellraw @a [{"text":"Creaking: ","color":"dark_gray"},{"score": {"name":"RAYCAST","objective":"temp"}}]

scoreboard players add @s slender_fear 45
scoreboard players operation RAYCAST temp /= _10 CONST
scoreboard players operation @s slender_fear -= RAYCAST temp