

execute unless score @s therm.config matches 0.. run scoreboard players operation @s therm.config = #power therm.config
# hot
execute unless score @s azide matches 0.. run scoreboard players operation @s azide = #azide_fuse therm.config
execute unless score @s thermite matches 0.. run scoreboard players operation @s thermite = #thermite_fuse therm.config

# cold
execute unless score @s cryonova matches 0.. run scoreboard players operation @s cryonova = #cryonova_fuse therm.config
execute unless score @s cryobomb matches 0.. run scoreboard players operation @s cryobomb = #cryobomb_fuse therm.config
execute unless score @s cryocherry matches 0.. run scoreboard players operation @s cryocherry = #cryocherry_fuse therm.config
execute unless score @s cryopop matches 0.. run scoreboard players operation @s cryopop = #cryopop_fuse therm.config

scoreboard players set @s therm.logout 0


