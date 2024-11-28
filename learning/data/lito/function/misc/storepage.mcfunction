$execute if entity @s[type=player] at @s as @n[type=item_frame,distance=..4] at @s run function lito:misc/storepage {location:$(location)}
execute unless entity @s[type=item_frame] run return fail

data merge storage lito:pages {new:{X:0,Y:0,Z:0,Facing: 0b}}
data modify storage lito:pages new.X set from entity @s Pos[0]
data modify storage lito:pages new.Y set from entity @s Pos[1]
data modify storage lito:pages new.Z set from entity @s Pos[2]
data modify storage lito:pages new.Facing set from entity @s Facing

$data modify storage lito:pages $(location) append from storage lito:pages new
data remove storage lito:pages new
kill @s