# increase decrease stamina
scoreboard players remove @s[scores={sprinting=1}] player.stamina 5
execute unless score @s player.tired matches 1.. unless score @s sprinting matches 1 run scoreboard players add @s player.stamina 3
# cap it
execute if score @s player.stamina > @s player.max_stamina run scoreboard players operation @s player.stamina = @s player.max_stamina

# decrease max stamina
scoreboard players remove @s[scores={sprinting=1}] player.max_stamina 2
# min stamina
scoreboard players set @s[scores={player.max_stamina=..3000}] player.max_stamina 3000

# End tired
scoreboard players remove @s[scores={player.tired=2..}] player.tired 1
execute if score @s player.tired matches 1 run scoreboard players set @s player.stamina 200
execute if score @s player.tired matches 1 run scoreboard players reset @s player.tired

# Start tired
execute if score @s player.stamina matches ..0 unless score @s player.tired matches 1.. run scoreboard players set @s player.tired 100

# Convert stamina to hunger
scoreboard players operation @s player.target_hunger = @s player.stamina
scoreboard players operation @s player.target_hunger /= _1000 CONST
scoreboard players add @s player.target_hunger 6

# Input run as @s, score @s player.target_hunger
execute store result score @s temp run data get entity @s foodLevel
execute if score @s temp < @s player.target_hunger run effect give @s saturation 1 0
execute if score @s temp > @s player.target_hunger run effect give @s hunger 1 0

