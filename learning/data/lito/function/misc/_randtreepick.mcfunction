# Picked tree is in storage lito:trees.input
execute store result score RAND VAR run random value 0..11

data merge storage lito:trees {input:{mirror:"none"}}
execute if score RAND VAR matches 4..7 store result storage lito:trees input.x int -1 run data get storage lito:trees input.x
execute if score RAND VAR matches 4..7 run data merge storage lito:trees {input:{mirror:"front_back"}}
execute if score RAND VAR matches 8..11 store result storage lito:trees input.z int -1 run data get storage lito:trees input.z
execute if score RAND VAR matches 8..11 run data merge storage lito:trees {input:{mirror:"left_right"}}

scoreboard players operation RAND VAR %= _4 CONST
execute store result score TEMP_X VAR run data get storage lito:trees input.x
execute store result score TEMP_Z VAR run data get storage lito:trees input.z

data merge storage lito:trees {input:{orientation:"none"}}
execute if score RAND VAR matches 0 run return run function lito:misc/_randtree with storage lito:trees input

data merge storage lito:trees {input:{orientation:"180"}}
execute store result storage lito:trees input.x int -1 run scoreboard players get TEMP_X VAR
execute store result storage lito:trees input.z int -1 run scoreboard players get TEMP_Z VAR
execute if score RAND VAR matches 1 run return run function lito:misc/_randtree with storage lito:trees input

data merge storage lito:trees {input:{orientation:"counterclockwise_90"}}
execute store result storage lito:trees input.x int 1 run scoreboard players get TEMP_Z VAR
execute store result storage lito:trees input.z int -1 run scoreboard players get TEMP_X VAR
execute if score RAND VAR matches 2 run return run function lito:misc/_randtree with storage lito:trees input

data merge storage lito:trees {input:{orientation:"clockwise_90"}}
execute store result storage lito:trees input.x int -1 run scoreboard players get TEMP_Z VAR
execute store result storage lito:trees input.z int 1 run scoreboard players get TEMP_X VAR
execute if score RAND VAR matches 3 run return run function lito:misc/_randtree with storage lito:trees input
