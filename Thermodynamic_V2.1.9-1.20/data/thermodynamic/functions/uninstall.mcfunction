# Uninstall
# remove OG stuff
function thermodynamic:uninstall_old

# remove modern stuff
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
scoreboard objectives remove therm_killfuse
scoreboard objectives remove therm_sneaking
scoreboard objectives remove therm_void
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

tag @a remove fuse_tweak
tag @a remove therm_power
tag @a remove therm_sneak
tag @a remove fuse_azide
tag @a remove fuse_thermite
tag @a remove fuse_cryonova
tag @a remove fuse_cryobomb
tag @a remove fuse_cryocherry
tag @a remove fuse_cryopop

tag @a remove therm_sneak_off
tag @a remove thermodynamic_off