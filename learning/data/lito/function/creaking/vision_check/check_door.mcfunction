tp @n[tag=vision_coord_getter] ~ ~ ~
execute store result score P_X temp run data get entity @n[tag=vision_coord_getter] Pos[0] 1000
execute store result score P_Z temp run data get entity @n[tag=vision_coord_getter] Pos[2] 1000

scoreboard players operation P_X temp %= _1000 CONST
scoreboard players operation P_Z temp %= _1000 CONST

# Early succeed
execute if score P_X temp matches 200..800 if score P_Z temp matches 200..800 run return 1

execute if block ~ ~ ~ #doors[facing=south] run scoreboard players set P_DIR temp 0
execute if block ~ ~ ~ #doors[facing=west] run scoreboard players set P_DIR temp 1
execute if block ~ ~ ~ #doors[facing=north] run scoreboard players set P_DIR temp 2
execute if block ~ ~ ~ #doors[facing=east] run scoreboard players set P_DIR temp 3

execute if block ~ ~ ~ #doors[open=true,hinge=left] run scoreboard players add P_DIR temp 1
execute if block ~ ~ ~ #doors[open=true,hinge=right] run scoreboard players remove P_DIR temp 1
#0/4 = south, 1 = west, 2 = north, 3/-1 = east
scoreboard players operation P_DIR temp %= _4 CONST

execute if score P_DIR temp matches 0 if score P_Z temp matches ..200 run return fail
execute if score P_DIR temp matches 1 if score P_X temp matches 800.. run return fail
execute if score P_DIR temp matches 2 if score P_Z temp matches 800.. run return fail
execute if score P_DIR temp matches 3 if score P_X temp matches ..200 run return fail

return 1