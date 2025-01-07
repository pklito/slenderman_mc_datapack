# tp @n[tag=vision_coord_getter] ~ ~ ~
# execute store result score P_X temp run data get entity @n[tag=vision_coord_getter] Pos[0] 1000
# execute store result score P_Z temp run data get entity @n[tag=vision_coord_getter] Pos[2] 1000

# scoreboard players operation P_X temp %= _1000 CONST
# scoreboard players operation P_Z temp %= _1000 CONST

return fail