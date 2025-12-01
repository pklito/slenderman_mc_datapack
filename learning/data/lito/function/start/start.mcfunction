function lito:start/reset
# Re give flashlight to those already playing
execute as @a[tag=user.playing] run function lito:give_flashlight

# Init pages
function lito:misc/randpages

# Drums
scoreboard players set @a sound.music 3000
stopsound @a * slender:ambient.drums

# Slender
function lito:summon
scoreboard players set GAME game.pages_collected 0
scoreboard players set GAME game.force_start_timer 3000