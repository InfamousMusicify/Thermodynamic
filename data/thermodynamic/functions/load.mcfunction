# Load


##### main ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# use
scoreboard objectives add thermodynamic trigger
scoreboard objectives add therm_craft minecraft.used:minecraft.pig_spawn_egg
scoreboard objectives add therm_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add therm_logout minecraft.custom:minecraft.leave_game
# util
scoreboard objectives add therm.config dummy
scoreboard objectives add therm_track dummy
scoreboard objectives add therm_time dummy
scoreboard objectives add therm_killfuse dummy
scoreboard objectives add therm_void dummy
# settings
scoreboard objectives add therm_sneaking dummy
# fuses and player choice /settings
scoreboard objectives add azide dummy
scoreboard objectives add thermite dummy
scoreboard objectives add cryonova dummy
scoreboard objectives add cryobomb dummy
scoreboard objectives add cryocherry dummy
scoreboard objectives add cryopop dummy

# presets
# 
# hot power # admin Only
execute unless score #azide therm.config matches 0.. run scoreboard players set #azide therm.config 0
execute unless score #thermite therm.config matches 0.. run scoreboard players set #thermite therm.config 0
# cold power
execute unless score #cryonova therm.config matches 0.. run scoreboard players set #cryonova therm.config 0
execute unless score #cryobomb therm.config matches 0.. run scoreboard players set #cryobomb therm.config 0
execute unless score #cryocherry therm.config matches 0.. run scoreboard players set #cryocherry therm.config 0
execute unless score #cryopop therm.config matches 0.. run scoreboard players set #cryopop therm.config 0

# hot effect # admin Only
execute unless score #azide_efct therm.config matches 0.. run scoreboard players set #azide_efct therm.config 0
execute unless score #thermite_efct therm.config matches 0.. run scoreboard players set #thermite_efct therm.config 0
# cold effect
execute unless score #cryonova_efct therm.config matches 0.. run scoreboard players set #cryonova_efct therm.config 0
execute unless score #cryobomb_efct therm.config matches 0.. run scoreboard players set #cryobomb_efct therm.config 0
execute unless score #cryocherry_efct therm.config matches 0.. run scoreboard players set #cryocherry_efct therm.config 0
execute unless score #cryopop_efct therm.config matches 0.. run scoreboard players set #cryopop_efct therm.config 0



# hot Partiles # player choice
execute unless score #azide_sfx therm.config matches 0.. run scoreboard players set #azide_sfx therm.config 0
execute unless score #thermite_sfx therm.config matches 0.. run scoreboard players set #thermite_sfx therm.config 0
# cold Partiles
execute unless score #cryonova_sfx therm.config matches 0.. run scoreboard players set #cryonova_sfx therm.config 0
execute unless score #cryobomb_sfx therm.config matches 0.. run scoreboard players set #cryobomb_sfx therm.config 0
execute unless score #cryocherry_sfx therm.config matches 0.. run scoreboard players set #cryocherry_sfx therm.config 0
execute unless score #cryopop_sfx therm.config matches 0.. run scoreboard players set #cryopop_sfx therm.config 0

# hot Partiles # player choice
execute unless score #azide_vis therm.config matches 0.. run scoreboard players set #azide_vis therm.config 0
execute unless score #thermite_vis therm.config matches 0.. run scoreboard players set #thermite_vis therm.config 0
# cold Partiles
execute unless score #cryonova_vis therm.config matches 0.. run scoreboard players set #cryonova_vis therm.config 0
execute unless score #cryobomb_vis therm.config matches 0.. run scoreboard players set #cryobomb_vis therm.config 0
execute unless score #cryocherry_vis therm.config matches 0.. run scoreboard players set #cryocherry_vis therm.config 0
execute unless score #cryopop_vis therm.config matches 0.. run scoreboard players set #cryopop_vis therm.config 0

# hot sneak # player choice
execute unless score #azide_sneak therm.config matches 0.. run scoreboard players set #azide_sneak therm.config 0
execute unless score #thermite_sneak therm.config matches 0.. run scoreboard players set #thermite_sneak therm.config 0
# cold Sneak
execute unless score #cryonova_sneak therm.config matches 0.. run scoreboard players set #cryonova_sneak therm.config 0
execute unless score #cryobomb_sneak therm.config matches 0.. run scoreboard players set #cryobomb_sneak therm.config 0
execute unless score #cryocherry_sneak therm.config matches 0.. run scoreboard players set #cryocherry_sneak therm.config 0
execute unless score #cryopop_sneak therm.config matches 0.. run scoreboard players set #cryopop_sneak therm.config 0

# Fuses 
# hot fuse # player choice
execute unless score #azide_fuse therm.config matches 0.. run scoreboard players set #azide_fuse therm.config 5
execute unless score #thermite_fuse therm.config matches 0.. run scoreboard players set #thermite_fuse therm.config 3
# cold fuse
execute unless score #cryonova_fuse therm.config matches 0.. run scoreboard players set #cryonova_fuse therm.config 5
execute unless score #cryobomb_fuse therm.config matches 0.. run scoreboard players set #cryobomb_fuse therm.config 3
execute unless score #cryocherry_fuse therm.config matches 0.. run scoreboard players set #cryocherry_fuse therm.config 3
execute unless score #cryopop_fuse therm.config matches 0.. run scoreboard players set #cryopop_fuse therm.config 0

# Arbitrary utility  -no adding to config
# power
execute unless score #power therm.config matches 0.. run scoreboard players set #power therm.config 0
# player sneak toggle
execute unless score #therm_sneak therm.config matches 0.. run scoreboard players set #therm_sneak therm.config 0
scoreboard players set #20 therm.config 20
# quick mine
execute unless score #quick_mine therm.config matches 0.. run scoreboard players set #quick_mine therm.config 0
##### ##### ##### End of presets

#schedule clear thermodynamic:tick
#clear thermodynamic:tick_1s
#schedule function thermodynamic:tick 1s
#schedule function thermodynamic:tick_1s 1s
#schedule clear thermodynamic:tick
schedule clear thermodynamic:tick_1s

