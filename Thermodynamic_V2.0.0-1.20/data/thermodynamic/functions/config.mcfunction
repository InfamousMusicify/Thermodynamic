# config
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["                Thermodynamic",{"text":" / ","color":"gray"},"Global Settings"]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

# On / Off
# hot
tellraw @s [{"text":"Reactions: On / Off","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #azide therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Azide On or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Aziroazide Azide ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#azide","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #thermite therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermite On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Thermite ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#thermite","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
# cold
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryonova therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo Nuke On or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Nova ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryonova","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryobomb therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Bomb On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Bomb ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryobomb","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryocherry therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Cherry-Bomb On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Cherry-Bomb ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryocherry","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryopop therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Pop On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Pop ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryopop","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]

# effects
# hot
tellraw @s [{"text":"Effects: On / Off","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #azide_efct therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Azide \nDmg / Effects On or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Aziroazide Azide Effects ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#azide_efct","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #thermite_efct therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermite \nDmg / Effects On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Thermite Effects ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#thermite_efct","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
# cold
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryonova_efct therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo Nuke \nDmg / Effects On or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Nova Effects ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryonova_efct","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryobomb_efct therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Bomb \nDmg / Effects On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Bomb Effects ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryobomb_efct","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryocherry_efct therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Cherry-Bomb \nDmg / Effects On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Cherry-Bomb Effects ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryocherry_efct","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryopop_efct therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Pop \nDmg / Effects On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Pop Effects ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryopop_efct","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]

# Sounds
# hot
tellraw @s [{"text":"Sounds: On / Off","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #azide_sfx therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Azide \nSounds On or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Aziroazide Azide Sounds ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#azide_sfx","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #thermite_sfx therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermite \nSounds On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Thermite Sounds ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#thermite_sfx","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
# cold
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryonova_sfx therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo Nuke \nSounds On or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Nova Sounds ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryonova_sfx","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryobomb_sfx therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Bomb \nSounds On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Bomb Sounds ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryobomb_sfx","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryocherry_sfx therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Cherry-Bomb \nSounds On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Cherry-Bomb Sounds ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryocherry_sfx","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryopop_sfx therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Pop \nSounds On or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Pop Sounds ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryopop_sfx","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]

# particles
# hot
tellraw @s [{"text":"Particles: On / Off","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #azide_vis therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Azide Particles \nOn or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Aziroazide Azide Particles ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#azide_vis","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #thermite_vis therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Thermite Particles \nOn or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Thermite Particles ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#thermite_vis","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
# cold
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryonova_vis therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo Nuke Particles \nOn or Off.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Nova Particles ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryonova_vis","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryobomb_vis therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Bomb Particles \nOn or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Bomb Particles ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryobomb_vis","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryocherry_vis therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Cherry-Bomb Particles \nOn or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Cherry-Bomb Particles ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryocherry_vis","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryopop_vis therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to toggle Cryo-Pop Particles \nOn or Off .","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0\n0 = ON - 1 = OFF","color":"dark_gray"}]}}," Cryo-Pop Particles ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryopop_vis","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]

# Fuses
# hot
tellraw @s [{"text":"Fuse: Delays","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #azide_fuse therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Azide Fuse\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5","color":"dark_gray"}]}}," Aziroazide Azide Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#azide_fuse","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #thermite_fuse therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Thermite Fuse\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3","color":"dark_gray"}]}}," Thermite Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#thermite_fuse","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
# cold
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryonova_fuse therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo Nuke Fuse\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 5","color":"dark_gray"}]}}," Cryo-Nova Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryonova_fuse","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryobomb_fuse therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Bomb Fuse\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3","color":"dark_gray"}]}}," Cryo-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryobomb_fuse","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryocherry_fuse therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Cherry-Bomb Fuse\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 3","color":"dark_gray"}]}}," Cryo-Cherry-Bomb Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryocherry_fuse","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #cryopop_fuse therm.config "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Cryo-Pop Fuse\nClick to edit delay time in seconds.","color":"gray"},{"text":"\nAccepts: whole numbers 0+\nDefault: 0","color":"dark_gray"}]}}," Cryo-Pop Fuse ",{"text":"(Current: ","color":"gray"},{"score":{"name":"#cryopop_fuse","objective":"therm.config"},"color":"gray"},{"text":")","color":"gray"}]



tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}


