function worldedit:util/activate_pointers
execute at @e[tag=we.active,tag=we.pointer_marker] run particle minecraft:sweep_attack ~ 5.1 ~ 0.7 0 0.7 0 20 force
execute at @e[tag=we.active,tag=we.pointer_marker] run particle minecraft:sweep_attack ~ 15.1 ~ 0.7 0 0.7 0 20 force
execute at @e[tag=we.active,tag=we.pointer_marker] run particle minecraft:sweep_attack ~ 25.1 ~ 0.7 0 0.7 0 20 force
execute at @e[tag=we.active,tag=we.pointer_marker] run particle minecraft:bubble ~ 15.1 ~ 0 4.1 0 0 200 force

