

scoreboard players enable @a thermodynamic
#execute unless score @s thermodynamic matches -1.. run scoreboard players set @s thermodynamic -1
scoreboard players set @s thermodynamic -1

# power
execute unless score @s therm.config matches 0.. run scoreboard players operation @s therm.config = #power therm.config
execute unless score @s therm_sneaking matches 0.. run scoreboard players operation @s therm_sneaking = #therm_sneak therm.config
# hot
execute unless score @s azide matches 0.. run scoreboard players operation @s azide = #azide_fuse therm.config
execute unless score @s thermite matches 0.. run scoreboard players operation @s thermite = #thermite_fuse therm.config
execute unless score @s flameite matches 0.. run scoreboard players operation @s flameite = #flameite_fuse therm.config
execute unless score @s rosite matches 0.. run scoreboard players operation @s rosite = #rosite_fuse therm.config
execute unless score @s pinite matches 0.. run scoreboard players operation @s pinite = #pinite_fuse therm.config


# cold
execute unless score @s cryonova matches 0.. run scoreboard players operation @s cryonova = #cryonova_fuse therm.config
execute unless score @s cryobomb matches 0.. run scoreboard players operation @s cryobomb = #cryobomb_fuse therm.config
execute unless score @s cryocherry matches 0.. run scoreboard players operation @s cryocherry = #cryocherry_fuse therm.config
execute unless score @s cryopop matches 0.. run scoreboard players operation @s cryopop = #cryopop_fuse therm.config


function thermodynamic:trigger/tag_remove


scoreboard players set @s therm_logout 0


#say hi