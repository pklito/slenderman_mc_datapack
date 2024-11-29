# TODO do the block cheks
execute unless block ~ ~ ~ #lito:partly_seethrough run return fail
execute if block ~ ~ ~ #walls run return run function lito:creaking/vision_check/check_wall
execute if block ~ ~ ~ #stairs run return run function lito:creaking/vision_check/check_stairs
execute if block ~ ~ ~ #slabs run return run function lito:creaking/vision_check/check_slab
execute if block ~ ~ ~ #doors run return run function lito:creaking/vision_check/check_door
return fail