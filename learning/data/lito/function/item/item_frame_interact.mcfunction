advancement revoke @s only lito:interact_page
execute at @s positioned ^ ^ ^1 as @n[tag=page,type=item_frame] unless score @s page_activated matches 1 run function lito:item/item_frame_activate