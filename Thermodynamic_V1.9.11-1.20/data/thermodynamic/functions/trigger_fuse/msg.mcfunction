

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 10"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermodynamic Reactions On or Off.\n0 = ON - 1 = OFF\n(-1 to turn on)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\nServer: ","color":"dark_gray"},{"score":{"name":"#power","objective":"therm.config"},"color":"dark_gray"}]}}," Thermodynamic ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]

# Fuses
# hot
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 11"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Azide Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5\nServer: ","color":"dark_gray"},{"score":{"name":"#azide_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Aziroazide Azide Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"azide"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 12"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Thermite Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nServer: ","color":"dark_gray"},{"score":{"name":"#thermite_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Thermite Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"thermite"},"color":"gray"},{"text":")","color":"gray"}]
# cold
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 13"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo Nuke Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5\nServer: ","color":"dark_gray"},{"score":{"name":"#cryonova_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Nova Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryonova"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 14"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Bomb Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nServer: ","color":"dark_gray"},{"score":{"name":"#cryobomb_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryobomb"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 15"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Cherry-Bomb Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3\nServer: ","color":"dark_gray"},{"score":{"name":"#cryocherry_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Cherry-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryocherry"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger thermodynamic set 16"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Pop Fuse delay\nClick to edit delay time in seconds.\n(-1 to turn off)","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\nServer: ","color":"dark_gray"},{"score":{"name":"#cryopop_fuse","objective":"therm.config"},"color":"dark_gray"}]}}," Cryo-Pop Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"@s","objective":"cryopop"},"color":"gray"},{"text":")","color":"gray"}]


