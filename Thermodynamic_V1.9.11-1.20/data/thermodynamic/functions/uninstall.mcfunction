# Uninstall

schedule clear thermodynamic:tick
schedule clear thermodynamic:tick_1s
schedule clear thermodynamic:azide/fuse
schedule clear thermodynamic:thermite/fuse
schedule clear thermodynamic:cryobomb/fuse
schedule clear thermodynamic:cryobomb/fuse
schedule clear thermodynamic:cryocherry/fuse
schedule clear thermodynamic:cryopop/fuse

# use
scoreboard objectives remove thermodynamic
scoreboard objectives remove therm_craft
scoreboard objectives remove therm_sneak
scoreboard objectives remove therm_logout
# util
scoreboard objectives remove therm.config
scoreboard objectives remove therm_track
scoreboard objectives remove therm_time
# fuses
scoreboard objectives remove azide
scoreboard objectives remove thermite
scoreboard objectives remove cryonova
scoreboard objectives remove cryobomb
scoreboard objectives remove cryocherry
scoreboard objectives remove cryopop

kill @e[type=minecraft:armor_stand,tag=azide_entity]
kill @e[type=minecraft:armor_stand,tag=thermite_entity]
kill @e[type=minecraft:armor_stand,tag=cryonova_entity]
kill @e[type=minecraft:armor_stand,tag=cryobomb_entity]
kill @e[type=minecraft:armor_stand,tag=cryocherry_entity]
kill @e[type=minecraft:armor_stand,tag=cryopop_entity]

tag @a remove thermodynamic_off



