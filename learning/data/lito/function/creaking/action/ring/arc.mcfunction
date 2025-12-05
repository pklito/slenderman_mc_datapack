execute if score RING VAR2 matches ..0 run return run particle angry_villager
scoreboard players remove RING VAR2 1
particle flame
summon marker ~ ~ ~ {Tags:["action.goal"]}
execute facing entity @p[tag=action.target] feet positioned ^0.32 ^ ^ run function lito:creaking/action/ring/arc