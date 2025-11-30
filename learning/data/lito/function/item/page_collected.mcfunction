scoreboard players add GAME game.pages_collected 1
execute if score GAME game.pages_collected matches 1..3 run title @a actionbar {"text": "A page has been collected...","italic": true,"color":"gray"}
execute if score GAME game.pages_collected matches 4 run title @a actionbar [{"text": "A p","italic": true,"color":"gray"}, {"text": "age","obfuscated": true},{"text": " has been coll","obfuscated": false},{"text": "ec","obfuscated": true},{"text": "ted...","obfuscated": false}]
execute if score GAME game.pages_collected matches 5 run title @a actionbar [{"text": "A ","italic": true,"color":"gray"}, {"text": "pa","obfuscated": true},{"text": "ge has been c","obfuscated": false},{"text": "olle","obfuscated": true},{"text": "cted...","obfuscated": false}]
execute if score GAME game.pages_collected matches 6 run title @a actionbar [{"text": "A ","italic": true,"color":"gray"}, {"text": "page ha","obfuscated": true},{"text": "s b","obfuscated": false},{"text": "een","obfuscated": true},{"text": " co","obfuscated": false},{"text": "ll","obfuscated": true},{"text": "ected.","obfuscated": false},{"text": "..","obfuscated": true}]
execute if score GAME game.pages_collected matches 7 run title @a actionbar [{"text": "A ","obfuscated": true, "italic":true,"color":"gray"},{"text": "page","obfuscated": false,"color": "dark_red"},{"text": " h","obfuscated": false,"color":"gray"},{"text": "as b","obfuscated": true},{"text": "ee","obfuscated": false},{"text": "n","obfuscated": true},{"text": "coll","obfuscated": false,"color": "dark_red"},{"text": "ecte","obfuscated": true,"color": "dark_red"},{"text": "d...","obfuscated": false,"color": "dark_red"}]



execute as @a at @s run playsound minecraft:ambient.warped_forest.mood ambient @s

# random?
execute if score GAME game.pages_collected matches 8.. run return run title @a actionbar [{"text": "THERES NO ESCAPING IT", "italic":true,"color": "dark_red"}]
