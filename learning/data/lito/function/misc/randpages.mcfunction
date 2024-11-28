kill @e[type=item_frame,tag=page]

data modify storage lito:random input set from storage lito:pages bathroom
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages silo
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages tunnel
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages rocks
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages pillars
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages tankers
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages truck
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages trailer
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages walls
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

data modify storage lito:random input set from storage lito:pages tree
function lito:misc/random_element
function lito:misc/summonpage with storage lito:random output

# Spawn 10 pages, kill 2 randomly.
kill @e[type=item_frame,tag=page,sort=random,limit=2]