kill @e[type=item_frame,tag=page]

data modify storage lito:random input set from storage lito:pages bathroom
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:"wall_"}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages silo
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages tunnel
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:"cave_"}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages rocks
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages pillars
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages tankers
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages truck
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages trailer
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages walls
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:"wall_"}}
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages tree
function lito:misc/random_element
execute store result storage lito:random output.page_number int 1 run random value 1..9
data merge storage lito:random {output:{page_type:""}}
function lito:misc/summonpage with storage lito:random output

# Spawn 10 pages, kill 2 randomly.
kill @e[type=item_frame,tag=page,sort=random,limit=2]

scoreboard players set @e[tag=page] temp 0
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 1
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 2
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 3
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 4
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 5
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 6
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 7
scoreboard players set @n[sort=random,tag=page,scores={temp=0},limit=1] temp 8
execute if predicate {"condition":"random_chance",chance:0.1} run scoreboard players set @n[sort=random,tag=page] temp 9
execute as @e[tag=page] store result entity @s Item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get @s temp
