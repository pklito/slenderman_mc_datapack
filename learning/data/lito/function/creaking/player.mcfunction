scoreboard players set RAYCAST temp 0
execute facing entity @n[type=creaking] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.8] run return fail
execute facing entity @n[type=creaking] feet unless function lito:creaking/player_vision run return fail
tellraw @a [{"text":"Creaking: ","color":"dark_gray"},{"score": {"name":"RAYCAST","objective":"temp"}}]
