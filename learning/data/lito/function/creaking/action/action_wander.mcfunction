#return 0
execute if predicate {condition:"random_chance",chance:0.03} run return run function lito:creaking/action/ring
execute if predicate {condition:"random_chance",chance:0.8} run return run function lito:creaking/action/teleport
execute if predicate {condition:"random_chance",chance:0.1} run return run function lito:creaking/action/local_teleport
return 1

tag @a remove action.target
tag @p add action.target