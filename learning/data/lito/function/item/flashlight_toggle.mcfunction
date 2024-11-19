advancement revoke @s only lito:flashlight_toggle

# Toggle flashlight
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 run scoreboard players add @s flashlight_on 1
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 run scoreboard players set @s[scores={flashlight_on=2..}] flashlight_on 0

scoreboard players set @s flashlight_cooldown 2
advancement revoke @s only lito:flashlight_cooldown
