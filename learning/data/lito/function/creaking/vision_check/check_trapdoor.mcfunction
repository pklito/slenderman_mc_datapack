tp @n[tag=vision_coord_getter] ~ ~ ~
execute store result score P_X temp run data get entity @n[tag=vision_coord_getter] Pos[0] 1000
execute store result score P_Y temp run data get entity @n[tag=vision_coord_getter] Pos[0] 1000
execute store result score P_Z temp run data get entity @n[tag=vision_coord_getter] Pos[2] 1000

scoreboard players operation P_X temp %= _1000 CONST
scoreboard players operation P_Y temp %= _1000 CONST
scoreboard players operation P_Z temp %= _1000 CONST

# Early succeed
execute if score P_X temp matches 200..800 if score P_Z temp matches 200..800 if score P_Y temp matches 200..800 run return 1

execute if block ~ ~ ~ #trapdoors[open=false,half=bottom] if score P_Y temp matches 0..200 run return fail
execute if block ~ ~ ~ #trapdoors[open=false,half=bottom] unless score P_Y temp matches 0..200 run return 1
execute if block ~ ~ ~ #trapdoors[open=false,half=top] if score P_Y temp matches 800..1000 run return fail
execute if block ~ ~ ~ #trapdoors[open=false,half=top] unless score P_Y temp matches 800..1000 run return 1

execute if block ~ ~ ~ #trapdoors[facing=west] unless score P_X temp matches 800..1000 run return 1
execute if block ~ ~ ~ #trapdoors[facing=north] unless score P_Z temp matches 800..1000 run return 1
execute if block ~ ~ ~ #trapdoors[facing=east] unless score P_X temp matches 0..200 run return 1
execute if block ~ ~ ~ #trapdoors[facing=west] unless score P_Z temp matches 0..200 run return 1


return fail