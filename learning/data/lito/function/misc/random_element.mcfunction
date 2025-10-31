# Input: array of objects in STORAGE lito:random input
# Output: single object in   STORAGE lito:random output
execute store result score SIZE temp run data get storage lito:random input
scoreboard players remove SIZE temp 1
execute store result storage lito:random temp.size int 1 run scoreboard players get SIZE temp
function lito:misc/random_1 with storage lito:random temp