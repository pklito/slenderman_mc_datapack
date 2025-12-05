execute if score RING VAR2 matches ..0 run return 0
scoreboard players remove RING VAR2 1

summon marker ~ ~ ~ {Tags:["action.goal"]}
execute facing entity @p[tag=action.target] feet positioned ^0.32 ^ ^ run function lito:creaking/action/ring/arc