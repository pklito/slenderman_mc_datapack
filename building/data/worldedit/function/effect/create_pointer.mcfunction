# ran by player creating the child, current_id is the id of the player
scoreboard players set return we.temp 0
execute as @e[tag=we.pointer_marker] if score @s we.id = current_id we.id run scoreboard players set return we.temp 1
execute if score return we.temp matches 0 run summon slime ~ ~ ~ {Tags:["we.pointer_marker","we.active"],NoGravity:true,NoAI:true,active_effects:[{id:"glowing",duration:-1}],DeathLootTable:"minecraft:empty",attributes:[{id:max_health,base:100f}],Health:100.0f}
execute if score return we.temp matches 0 run scoreboard players operation @n[tag=we.active] we.id = current_id we.id