# Used by random_element.mcfunction
$execute store result storage lito:random temp.element int 1 run random value 0..$(size)
function lito:misc/random_2 with storage lito:random temp