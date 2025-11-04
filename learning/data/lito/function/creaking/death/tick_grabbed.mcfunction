# effect give @s levitation 1 0 true
kill @e[tag=turnaround_marker]
execute at @n[tag=slenderman_entity] run summon marker ~ ~2 ~ {Tags:["turnaround_marker"]}
execute store result score @s temp run data get entity @s Rotation[1]
tp @s[scores={temp=..-15}] ~ ~ ~ ~ ~0.2
tp @s[scores={temp=15..}] ~ ~ ~ ~ ~-0.2

tp @s[scores={temp=..-35}] ~ ~ ~ ~1 ~3
tp @s[scores={temp=35..}] ~ ~ ~ ~1 ~-3
execute at @s rotated ~ ~ anchored eyes positioned ^ ^ ^0.3 facing entity @n[tag=turnaround_marker] eyes positioned ^ ^ ^0.03 facing entity @s eyes positioned ^ ^ ^1 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
