scoreboard players set @s page_activated 1

# Result
function lito:item/page_collected

kill @n[distance=..10,type=item,nbt={Item:{id:"minecraft:map"}}]
kill @s