playsound minecraft:block.metal_pressure_plate.click_on block @a
item modify entity @s weapon.offhand {function:"minecraft:set_custom_model_data",flags:{values:[true,true],mode:"replace_all"}}
item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",flags:{values:[true,true],mode:"replace_all"}}