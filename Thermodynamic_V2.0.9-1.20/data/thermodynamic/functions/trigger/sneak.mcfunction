

tag @s add therm_sneak
tag @s add fuse_tweak

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger thermodynamic set "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Instant Reactions on Sneak.","color":"gray"},{"text":"\n0 = ON - 1 = OFF\n(-1 for 0)\nAccepts: whole numbers 0+\nDefault: 0\nServer: ","color":"dark_gray"},{"score":{"name":"#therm_sneak","objective":"therm.config"},"color":"dark_gray"}]}}," Thermodynamic Sneak ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"therm_sneak"},"color":"gray"},{"text":")","color":"gray"}]
