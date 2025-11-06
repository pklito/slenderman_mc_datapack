# assumes that scoreboard raycast temp is 10* blocks
# assumes 700 5 -200 has a light block
execute anchored eyes positioned ^ ^ ^0 unless block ^ ^ ^ air if block ^ ^ ^1 air run return run setblock ^ ^ ^1 light[level=4]
execute anchored eyes positioned ^ ^ ^0 run return run function lito:light/raycast