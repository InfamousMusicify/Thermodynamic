# new_player
#
#say new player

# activate mains
scoreboard players enable @a thermodynamic
scoreboard players set @s thermodynamic -1

# power
scoreboard players operation @s therm.config = #power therm.config
scoreboard players operation @s therm_sneaking = #therm_sneak therm.config
# hot
scoreboard players operation @s azide = #azide_fuse therm.config
scoreboard players operation @s thermite = #thermite_fuse therm.config
# cold
scoreboard players operation @s cryonova = #cryonova_fuse therm.config
scoreboard players operation @s cryobomb = #cryobomb_fuse therm.config
scoreboard players operation @s cryocherry = #cryocherry_fuse therm.config
scoreboard players operation @s cryopop = #cryopop_fuse therm.config

