$execute rotated as @n[tag=slman] positioned ^0.3 ^0.8 ^ facing entity @n[tag=slman] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 rotated as @n[tag=slman] positioned ^-0.3 ^-0.8 ^ if entity @s[distance=..$(angle)] run return 1
$execute rotated as @n[tag=slman] positioned ^-0.3 ^0.8 ^ facing entity @n[tag=slman] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 rotated as @n[tag=slman] positioned ^0.3 ^-0.8 ^ if entity @s[distance=..$(angle)] run return 1
$execute if score @p dev.config matches 0 run data merge storage lito:generic {value: $(angle)}
execute if score @p dev.config matches 0 store result score @p dev.config run data get storage lito:generic value 1000

