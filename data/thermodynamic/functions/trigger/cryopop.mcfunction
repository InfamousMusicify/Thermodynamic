


tag @s add fuse_cryopop
tag @s add fuse_tweak

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Pop Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\nServer: ","color":"dark_gray"},{"score":{"name":"#cryopop_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Pop Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryopop"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Pop Fuse delay\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\nMax: 60\nServer: ","color":"dark_gray"},{"score":{"name":"#cryopop_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Pop Fuse ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"cryopop"},"color":"gray"},{"text":")","color":"gray"}]
