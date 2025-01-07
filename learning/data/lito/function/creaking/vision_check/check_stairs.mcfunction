# tp @n[tag=vision_coord_getter] ~ ~ ~

# execute store result score P_Y temp run data get entity @n[tag=vision_coord_getter] Pos[1] 1000

# scoreboard players operation P_Y temp %= _1000 CONST

# execute if block ~ ~ ~ #slabs[type=bottom] if score P_Y temp matches 500.. run return 1
# execute if block ~ ~ ~ #slabs[type=top] if score P_Y temp matches ..500 run return 1

# Intersection or type=double
return fail