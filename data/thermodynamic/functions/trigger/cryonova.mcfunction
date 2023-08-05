

tag @s add fuse_cryonova
tag @s add fuse_tweak

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo Nuke Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5\nServer: ","color":"dark_gray"},{"score":{"name":"#cryonova_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Nova Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryonova"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Nova Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5\nMax: 60\nServer: ","color":"dark_gray"},{"score":{"name":"#cryonova_fuse","objective":"therm.config"},"color":"dark_gray"}]}},"",{"text":" Cryo-Nova Fuse ","color":"blue"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"cryonova"},"color":"gray"},{"text":")","color":"gray"}]
