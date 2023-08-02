


tag @s add therm_power
tag @s add fuse_tweak

#tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermodynamic Reactions On or Off.\n0 = ON - 1 = OFF","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\nServer: ","color":"dark_gray"},{"score":{"name":"#power","objective":"therm.config"},"color":"dark_gray"}]}}," Thermodynamic ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermodynamic Reactions On or Off.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\nAccepts: whole numbers 0+\nDefault: 0\nMax: 60\nServer: ","color":"dark_gray"},{"score":{"name":"#power","objective":"therm.config"},"color":"dark_gray"}]}}," Thermodynamic ",{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
