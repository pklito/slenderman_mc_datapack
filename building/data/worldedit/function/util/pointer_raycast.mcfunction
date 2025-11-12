execute if score POINTER_LOOP we.input matches ..0 run return run function worldedit:effect/pointer_end
execute unless block ^ ^ ^1 #air run return run function worldedit:effect/pointer_end

scoreboard players remove POINTER_LOOP we.input 10
execute positioned ^ ^ ^1 run function worldedit:util/pointer_raycast