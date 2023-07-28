
tag @s add fuse_thermite
tag @s add fuse_tweak

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Thermite Fuse delay\nClick to edit delay time in seconds.\n\n(-1 is 0)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nServer: ","color":"dark_gray"},{"score":{"name":"#thermite_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Thermite Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"thermite"},"color":"gray"},{"text":")","color":"gray"}]
