


tag @s add fuse_azide
tag @s add fuse_tweak

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Azide Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5\nServer: ","color":"dark_gray"},{"score":{"name":"#azide_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Aziroazide Azide Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"azide"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Azide Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5\nMax: 60\nServer: ","color":"dark_gray"},{"score":{"name":"#azide_fuse","objective":"therm.config"},"color":"dark_gray"}]}},"",{"text":" Aziroazide Azide Fuse ","color":"red"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"azide"},"color":"gray"},{"text":")","color":"gray"}]

