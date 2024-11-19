summon marker ~ ~ ~ {Tags:['original_angle']}
data modify entity @n[type=marker,tag=original_angle] Rotation set from entity @p Rotation
rotate @s facing entity @n[tag=vision]
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","looking_at":{"nbt":"{Tags:['vision']}"}}}} run say detected!
execute rotated as @n[tag=original_angle] run rotate @s facing ^ ^ ^100
kill @e[tag=original_angle]