tp @n[tag=vision_coord_getter] ~ ~ ~
execute store result score P_X temp run data get entity @n[tag=vision_coord_getter] Pos[0] 1000
execute store result score P_Z temp run data get entity @n[tag=vision_coord_getter] Pos[2] 1000

scoreboard players operation P_X temp %= _1000 CONST
scoreboard players operation P_Z temp %= _1000 CONST

# Early exit
execute unless score P_X temp matches 250..750 unless score P_Z temp matches 250..750 run return 1
# Center pillar
execute if block ~ ~ ~ #walls[up=true] if score P_X temp matches 250..750 if score P_Z temp matches 250..750 run return fail
execute if score P_X temp matches 312..688 if score P_Z temp matches 312..688 run return fail


execute unless block ~ ~ ~ #walls[east=none] if score P_X temp matches 688.. if score P_Z temp matches 312..688 run return fail
execute unless block ~ ~ ~ #walls[west=none] if score P_X temp matches ..312 if score P_Z temp matches 312..688 run return fail
execute unless block ~ ~ ~ #walls[north=none] if score P_X temp matches 312..688 if score P_Z temp matches ..312 run return fail
execute unless block ~ ~ ~ #walls[south=none] if score P_X temp matches 312..688 if score P_Z temp matches 688.. run return fail

return 1