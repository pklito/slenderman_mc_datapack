#return 0
execute if predicate {condition:"random_chance",chance:1} run return run function lito:creaking/action/ring
# execute if predicate {condition:"random_chance",chance:0.03} run return run function lito:creaking/action/teleport
# execute if predicate {condition:"random_chance",chance:0.1} run return run function lito:creaking/action/local_teleport
function lito:creaking/action/move