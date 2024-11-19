# assumes that scoreboard raycast temp is 10* blocks
# assumes 700 5 -200 has a light block
execute anchored eyes positioned ^ ^ ^0 unless block ^ ^ ^ air if block ^ ^ ^1 air run return run clone 700 5 -200 700 5 -200 ^ ^ ^1 filtered minecraft:light
execute anchored eyes positioned ^ ^ ^0 run return run function lito:light/raycast