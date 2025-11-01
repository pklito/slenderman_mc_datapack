advancement revoke @s only lito:night_vision_toggle

# Toggle flashlight
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 run scoreboard players add @s item.night_vision_on 1
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 run scoreboard players set @s[scores={item.night_vision_on=2..}] item.night_vision_on 0

scoreboard players set @s flashlight_cooldown 2
advancement revoke @s only lito:flashlight_cooldown
