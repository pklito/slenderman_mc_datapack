execute unless block ^ ^ ^0.25 #lito:passable unless block ^ ^ ^0.25 #lito:trees run scoreboard players set ITER temp 0
execute if block ~ ~ ~ #lito:passable if block ~ ~1 ~ #lito:passable if block ^ ^ ^0.25 #lito:trees if score ITER temp matches ..8 run scoreboard players set ITER temp 0

execute unless score ITER temp matches 1.. if block ~ ~ ~ #lito:passable if block ~ ~1 ~ #lito:passable run summon marker ~ ~ ~ {Tags:["move_option"]}
execute unless score ITER temp matches 1.. run return 1

scoreboard players remove ITER temp 1
execute positioned ^ ^ ^0.25 run function lito:creaking/action/move_loop_ray