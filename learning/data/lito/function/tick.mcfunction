# This function runs once every tick.

# Each command goes on a separate line and they run one after each other

# title @a actionbar {"text":"Your pack is ticking!","color":"green"}

function lito:light/tick

function lito:move/tick

function lito:creaking/tick

function lito:sound/tick

function lito:item/tick
stopsound @a music music.game

execute as @a[scores={carrot_clicked=1..}] at @s run function lito:item/flashlight_toggle
scoreboard players reset @a carrot_clicked