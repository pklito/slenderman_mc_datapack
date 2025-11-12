scoreboard objectives add we.id dummy
scoreboard objectives add we.item.already_clicked dummy
scoreboard objectives add we.click_sensor dummy

scoreboard objectives add we.item.pointer_type dummy
scoreboard objectives add we.input dummy
scoreboard objectives add we.temp dummy

scoreboard objectives add we.fill.percent.grass dummy
scoreboard objectives add we.fill.percent.gravel dummy
scoreboard objectives add we.fill.percent.concrete dummy

execute as @a unless score @s we.fill.percent.grass matches 0..100 run scoreboard players set @s we.fill.percent.grass 100
execute as @a unless score @s we.fill.percent.gravel matches 0..100 run scoreboard players set @s we.fill.percent.gravel 13
execute as @a unless score @s we.fill.percent.concrete matches 0..100 run scoreboard players set @s we.fill.percent.concrete 20