# summon a page, page locations are stored in lito:pages
# page_type is one of : ["", "wall_", "cave_"] (models are of types page, wall_page, cave_page)
# page number decides the image on the page.
$summon item_frame $(X) $(Y) $(Z) {Item:{id:"minecraft:map", components:{item_model:"slender:$(page_type)page",custom_model_data:{"floats":[$(page_number)]}}}, Invincible:1b, Facing:$(Facing), Tags:["page"], Invisible:1b}