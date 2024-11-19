execute unless block ~ ~ ~ minecraft:structure_block run return fail

data merge storage lito:trees {new:{x:0,z:0,sz:0,tree:"",sx:0}}
data modify storage lito:trees new.x set from block ~ ~ ~ posX
data modify storage lito:trees new.z set from block ~ ~ ~ posZ
data modify storage lito:trees new.sx set from block ~ ~ ~ sizeX
data modify storage lito:trees new.sz set from block ~ ~ ~ sizeZ
data modify storage lito:trees new.tree set from block ~ ~ ~ name

data modify storage lito:trees base append from storage lito:trees new
data remove storage lito:trees new