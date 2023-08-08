# Load


##### main ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# use
scoreboard objectives add thermodynamic trigger
scoreboard objectives add therm_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add therm_logout minecraft.custom:minecraft.leave_game
# util
scoreboard objectives add therm.config dummy "Settings"
scoreboard objectives add therm_track dummy "player alignment"
scoreboard objectives add therm_time dummy "as time"
scoreboard objectives add therm_killfuse dummy "kill player tags timer"
scoreboard objectives add therm_void dummy "void detector"
scoreboard objectives add therm_as_kill dummy "kill as timer"
# settings
scoreboard objectives add therm_sneaking dummy
# fuses and player choice /settings
scoreboard objectives add azide dummy
scoreboard objectives add thermite dummy
scoreboard objectives add flameite dummy
scoreboard objectives add pinite dummy
scoreboard objectives add rosite dummy

scoreboard objectives add cryonova dummy
scoreboard objectives add cryobomb dummy
scoreboard objectives add cryocherry dummy
scoreboard objectives add cryopop dummy

# presets
# 
# hot power # admin Only
execute unless score #azide therm.config matches 0.. run scoreboard players set #azide therm.config 0
execute unless score #thermite therm.config matches 0.. run scoreboard players set #thermite therm.config 0
execute unless score #flameite therm.config matches 0.. run scoreboard players set #flameite therm.config 0
execute unless score #pinite therm.config matches 0.. run scoreboard players set #pinite therm.config 0
execute unless score #rosite therm.config matches 0.. run scoreboard players set #rosite therm.config 0

# cold power
execute unless score #cryonova therm.config matches 0.. run scoreboard players set #cryonova therm.config 0
execute unless score #cryobomb therm.config matches 0.. run scoreboard players set #cryobomb therm.config 0
execute unless score #cryocherry therm.config matches 0.. run scoreboard players set #cryocherry therm.config 0
execute unless score #cryopop therm.config matches 0.. run scoreboard players set #cryopop therm.config 0


# hot effect # admin Only
execute unless score #azide_efct therm.config matches 0.. run scoreboard players set #azide_efct therm.config 0
execute unless score #thermite_efct therm.config matches 0.. run scoreboard players set #thermite_efct therm.config 0
execute unless score #flameite_efct therm.config matches 0.. run scoreboard players set #flameite_efct therm.config 0
execute unless score #pinite_efct therm.config matches 0.. run scoreboard players set #pinite_efct therm.config 0
execute unless score #rosite_efct therm.config matches 0.. run scoreboard players set #rosite_efct therm.config 0

# cold effect
execute unless score #cryonova_efct therm.config matches 0.. run scoreboard players set #cryonova_efct therm.config 0
execute unless score #cryobomb_efct therm.config matches 0.. run scoreboard players set #cryobomb_efct therm.config 0
execute unless score #cryocherry_efct therm.config matches 0.. run scoreboard players set #cryocherry_efct therm.config 0
execute unless score #cryopop_efct therm.config matches 0.. run scoreboard players set #cryopop_efct therm.config 0


# hot Partiles # player choice
execute unless score #azide_sfx therm.config matches 0.. run scoreboard players set #azide_sfx therm.config 0
execute unless score #thermite_sfx therm.config matches 0.. run scoreboard players set #thermite_sfx therm.config 0
execute unless score #flameite_sfx therm.config matches 0.. run scoreboard players set #flameite_sfx therm.config 0
execute unless score #pinite_sfx therm.config matches 0.. run scoreboard players set #pinite_sfx therm.config 0
execute unless score #rosite_sfx therm.config matches 0.. run scoreboard players set #rosite_sfx therm.config 0

# cold Partiles
execute unless score #cryonova_sfx therm.config matches 0.. run scoreboard players set #cryonova_sfx therm.config 0
execute unless score #cryobomb_sfx therm.config matches 0.. run scoreboard players set #cryobomb_sfx therm.config 0
execute unless score #cryocherry_sfx therm.config matches 0.. run scoreboard players set #cryocherry_sfx therm.config 0
execute unless score #cryopop_sfx therm.config matches 0.. run scoreboard players set #cryopop_sfx therm.config 0

# hot Partiles # player choice
execute unless score #azide_vis therm.config matches 0.. run scoreboard players set #azide_vis therm.config 0
execute unless score #thermite_vis therm.config matches 0.. run scoreboard players set #thermite_vis therm.config 0
execute unless score #flameite_vis therm.config matches 0.. run scoreboard players set #flameite_vis therm.config 0
execute unless score #pinite_vis therm.config matches 0.. run scoreboard players set #pinite_vis therm.config 0
execute unless score #rosite_vis therm.config matches 0.. run scoreboard players set #rosite_vis therm.config 0

# cold Partiles
execute unless score #cryonova_vis therm.config matches 0.. run scoreboard players set #cryonova_vis therm.config 0
execute unless score #cryobomb_vis therm.config matches 0.. run scoreboard players set #cryobomb_vis therm.config 0
execute unless score #cryocherry_vis therm.config matches 0.. run scoreboard players set #cryocherry_vis therm.config 0
execute unless score #cryopop_vis therm.config matches 0.. run scoreboard players set #cryopop_vis therm.config 0


# hot sneak # player choice
execute unless score #azide_sneak therm.config matches 0.. run scoreboard players set #azide_sneak therm.config 0
execute unless score #thermite_sneak therm.config matches 0.. run scoreboard players set #thermite_sneak therm.config 0
execute unless score #flameite_sneak therm.config matches 0.. run scoreboard players set #flameite_sneak therm.config 0
execute unless score #pinite_sneak therm.config matches 0.. run scoreboard players set #pinite_sneak therm.config 0
execute unless score #rosite_sneak therm.config matches 0.. run scoreboard players set #rosite_sneak therm.config 0

# cold Sneak
execute unless score #cryonova_sneak therm.config matches 0.. run scoreboard players set #cryonova_sneak therm.config 0
execute unless score #cryobomb_sneak therm.config matches 0.. run scoreboard players set #cryobomb_sneak therm.config 0
execute unless score #cryocherry_sneak therm.config matches 0.. run scoreboard players set #cryocherry_sneak therm.config 0
execute unless score #cryopop_sneak therm.config matches 0.. run scoreboard players set #cryopop_sneak therm.config 0


# Fuses 
# hot fuse # player choice
execute unless score #azide_fuse therm.config matches 0.. run scoreboard players set #azide_fuse therm.config 5
execute unless score #thermite_fuse therm.config matches 0.. run scoreboard players set #thermite_fuse therm.config 3
execute unless score #flameite_fuse therm.config matches 0.. run scoreboard players set #flameite_fuse therm.config 3
execute unless score #rosite_fuse therm.config matches 0.. run scoreboard players set #rosite_fuse therm.config 3
execute unless score #pinite_fuse therm.config matches 0.. run scoreboard players set #pinite_fuse therm.config 0

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

# Legacy - removing in 1.20.2 or 1.21
scoreboard objectives add therm_craft minecraft.used:minecraft.pig_spawn_egg



#schedule clear thermodynamic:tick
#clear thermodynamic:tick_1s
#schedule function thermodynamic:tick 1s
#schedule function thermodynamic:tick_1s 1s
#schedule clear thermodynamic:tick
schedule clear thermodynamic:tick_1s



# fix for reloads lol
scoreboard players set @a thermodynamic -1