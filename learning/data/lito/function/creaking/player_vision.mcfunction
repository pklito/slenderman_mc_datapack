scoreboard players set RAYCAST temp 0
execute facing entity @n[type=creaking] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.8] run return fail
execute anchored eyes facing entity @n[type=creaking] eyes unless function lito:creaking/vision_loop run return fail


scoreboard players add @s slender_fear 65
scoreboard players operation RAYCAST temp /= _12 CONST
scoreboard players operation @s slender_fear -= RAYCAST temp