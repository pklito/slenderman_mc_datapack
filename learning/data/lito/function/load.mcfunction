# This function runs once when the data pack is loaded. This happens when the world/server starts, and every time "/reload" is ran.

# Each command goes on a separate line and they run one after each other

scoreboard objectives add temp dummy

scoreboard objectives add raycast dummy
scoreboard objectives add flashlight_cooldown dummy
scoreboard objectives add flashlight_on dummy
scoreboard objectives add night_vision_on dummy

scoreboard objectives add sprinting dummy

scoreboard objectives add VAR dummy

scoreboard objectives add CONST dummy

scoreboard players set _4 CONST 4