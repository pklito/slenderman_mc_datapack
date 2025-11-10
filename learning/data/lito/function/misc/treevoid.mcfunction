execute unless block ~ ~ ~ minecraft:structure_block run tellraw @s {"text": "Function failed. Not run on a structure block!"}
execute unless block ~ ~ ~ minecraft:structure_block run return fail

data remove storage lito:trees fill
data merge storage lito:trees {fill:{x:0,z:0,sz:0,tree:"",sx:0}}
data modify storage lito:trees fill.x set from block ~ ~ ~ posX
data modify storage lito:trees fill.y set from block ~ ~ ~ posY
data modify storage lito:trees fill.z set from block ~ ~ ~ posZ
data modify storage lito:trees fill.sx set from block ~ ~ ~ sizeX
data modify storage lito:trees fill.sy set from block ~ ~ ~ sizeY
data modify storage lito:trees fill.sz set from block ~ ~ ~ sizeZ

function lito:misc/_treevoid with storage lito:trees fill
data remove storage lito:trees fill