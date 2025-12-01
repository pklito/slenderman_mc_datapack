advancement revoke @s only lito:gamemode_toggle

tag @s[tag=user.playing] add was_player
tag @s add user.spectating
tag @s add user.playing
tag @s[tag=was_player] remove user.playing
tag @s[tag=!was_player] remove user.spectating
tag @s remove was_player

