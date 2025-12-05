tag @e[tag=action.goal,sort=random,limit=1] add current_goal

# not seen by player, no blocks, no players nearby
execute at @n[type=marker,tag=current_goal] \
if function lito:creaking/action/core/pred_unseen \
if function lito:creaking/action/core/pred_unobstructed \
if function lito:creaking/action/core/pred_legal_6 run return run function lito:creaking/action/core/success_silent
kill @n[type=marker,tag=current_goal]

execute if score LOOP temp matches ..0 run return fail
scoreboard players remove LOOP temp 1
function lito:creaking/action/ring/find_valid
