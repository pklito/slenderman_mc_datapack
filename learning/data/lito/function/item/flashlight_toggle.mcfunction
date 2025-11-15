advancement revoke @s only lito:flashlight_toggle

# Toggle flashlight
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 run scoreboard players add @s item.flashlight_state 1
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 if entity @s[scores={item.flashlight_state=2..}] at @s run function lito:item/flashlight_off_ux
execute unless score @s flashlight_cooldown matches -2147483648..2147483647 run scoreboard players set @s[scores={item.flashlight_state=2..}] item.flashlight_state 0

scoreboard players set @s flashlight_cooldown 2
advancement revoke @s only lito:flashlight_cooldown
