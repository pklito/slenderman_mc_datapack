
scoreboard players remove @s item.battery 10
data merge storage lito:generic {input:{battery:0}}
execute store result storage lito:generic input.battery float 0.1 run scoreboard players get @s item.battery
function lito:item/_decrease_battery with storage lito:generic input