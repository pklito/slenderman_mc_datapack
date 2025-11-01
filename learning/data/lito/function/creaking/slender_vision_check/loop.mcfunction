# Modify RAYCAST core.seen and output RAYCAST TEMP
# cast by target
execute if score RAYCAST temp matches 700.. run scoreboard players set RAYCAST core.seen 0
execute if score RAYCAST temp matches 700.. run return fail

# RET = 1 if not in a block
scoreboard players set RET temp 1
execute unless block ~ ~ ~ #lito:seethrough store success score RET temp run function lito:creaking/vision_check/block_check
execute unless score RET temp matches 0 positioned ^ ^ ^-0.05 unless block ~ ~ ~ #lito:seethrough store success score RET temp run function lito:creaking/vision_check/block_check
#If in a block
execute if score RET temp matches 0 if score GO_DOWN temp matches ..0 run scoreboard players set RAYCAST core.seen 0
#In a block but GO_DOWN isn't 0 yet (recall and move one block down)
execute unless score GO_DOWN temp matches ..0 if score RET temp matches 0 run scoreboard players remove GO_DOWN temp 1
execute unless score GO_DOWN temp matches ..0 if score RET temp matches 0 positioned ^ ^ ^-0.1 positioned ~ ~-1 ~ facing entity @s eyes run return run function lito:creaking/vision_check/loop

execute as @s[dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run return 1

scoreboard players add RAYCAST temp 1
execute positioned ^ ^ ^0.1 run return run function lito:creaking/vision_check/loop