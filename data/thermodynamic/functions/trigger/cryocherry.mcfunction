

tag @s add fuse_cryocherry
tag @s add fuse_tweak

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Cherry-Bomb Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nGlobal: ","color":"dark_gray"},{"score":{"name":"#cryocherry_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Cherry-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryocherry"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Cherry Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 2\nMax: 60\nGlobal: ","color":"dark_gray"},{"score":{"name":"#cryocherry_fuse","objective":"therm.config"},"color":"dark_gray"}]}},"",{"text":" Cryo-Cherry Fuse ","color":"blue"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"cryocherry"},"color":"gray"},{"text":")","color":"gray"}]
