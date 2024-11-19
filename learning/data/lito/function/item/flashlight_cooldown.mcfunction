scoreboard players remove @s flashlight_cooldown 1
execute if score @s flashlight_cooldown matches 1.. run return run advancement revoke @s only lito:flashlight_cooldown
scoreboard players reset @s flashlight_cooldown
