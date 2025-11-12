advancement revoke @s only worldedit:tool_template

# hold
say holding template!
execute unless score @s we.item.already_clicked matches 0 run return 0

# click
say clicked template!
