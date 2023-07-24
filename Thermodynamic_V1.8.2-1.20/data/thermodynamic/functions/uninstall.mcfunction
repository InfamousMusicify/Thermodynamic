# Uninstall
scoreboard objectives remove thermodynamic
scoreboard objectives remove thermo_craft
scoreboard objectives remove bomb_time
scoreboard objectives remove cryobomb
scoreboard objectives remove m_cryobomb
scoreboard objectives remove thermite


kill @e[type=minecraft:armor_stand,tag=cryo_entity]
kill @e[type=minecraft:armor_stand,tag=m_cryo_entity]
kill @e[type=minecraft:armor_stand,tag=therm_entity]

schedule clear thermodynamic:tick