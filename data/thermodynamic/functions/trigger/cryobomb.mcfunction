

tag @s add fuse_cryobomb
tag @s add fuse_tweak

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Bomb Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nGlobal: ","color":"dark_gray"},{"score":{"name":"#cryobomb_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryobomb"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Bomb Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nMax: 60\nGlobal: ","color":"dark_gray"},{"score":{"name":"#cryobomb_fuse","objective":"therm.config"},"color":"dark_gray"}]}},"",{"text":" Cryo-Bomb Fuse ","color":"blue"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"cryobomb"},"color":"gray"},{"text":")","color":"gray"}]
