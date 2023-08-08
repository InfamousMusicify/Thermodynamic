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
scoreboard objectives remove therm_sneak
scoreboard objectives remove therm_logout
# util
scoreboard objectives remove therm.config
scoreboard objectives remove therm_track
scoreboard objectives remove therm_time
scoreboard objectives remove therm_killfuse
scoreboard objectives remove therm_sneaking
scoreboard objectives remove therm_void
scoreboard objectives remove therm_as_kill
# fuses
scoreboard objectives remove azide
scoreboard objectives remove thermite
scoreboard objectives remove cryonova
scoreboard objectives remove cryobomb
scoreboard objectives remove cryocherry
scoreboard objectives remove cryopop

kill @e[type=minecraft:armor_stand,tag=thermodynamic]

execute as @a run function thermodynamic:trigger/tag_remove







# legacy
scoreboard objectives remove therm_craft