$execute if entity @s[type=player] at @s as @n[type=item_frame,distance=..4] at @s run function lito:misc/storepage {location:$(location)}
execute unless entity @s[type=item_frame] run return fail

data merge storage lito:pages {new:{Pos:{X:0,Y:0,Z:0}, NBT:{Rotation: [0f,0f]}}}
data modify storage lito:pages new.Pos.X set from entity @s Pos[0]
data modify storage lito:pages new.Pos.Y set from entity @s Pos[1]
data modify storage lito:pages new.Pos.Z set from entity @s Pos[2]
data modify storage lito:pages new.NBT.Rotation set from entity @s Rotation

$data modify storage lito:pages $(location) append from storage lito:pages new
data remove storage lito:pages new
kill @s