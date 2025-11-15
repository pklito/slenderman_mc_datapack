scoreboard players add COUNT item.flashlight_id 1
data merge storage lito:generic {input:{id:0}}
execute store result storage lito:generic input.id int 1 run scoreboard players get COUNT item.flashlight_id
function lito:item/_flashlight_id with storage lito:generic input