

tag @s add fuse_cryobomb
tag @s add fuse_tweak

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Bomb Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nServer: ","color":"dark_gray"},{"score":{"name":"#cryobomb_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryobomb"},"color":"gray"},{"text":")","color":"gray"}]
