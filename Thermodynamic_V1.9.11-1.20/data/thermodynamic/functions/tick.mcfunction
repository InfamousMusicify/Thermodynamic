# tick


schedule function thermodynamic:tick 1t



#at @e[type=minecraft:armor_stand,tag=cryonuke_entity,tag=!fuse] 
#execute as @a[scores={cryo_nuke=1..}] run function cryobomb:place_cryobomb/place_cryonuke
#scoreboard players reset @a cryo_nuke
#execute if entity @s[scores={thermo_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryonuke_entity,tag=!fuse]
scoreboard players reset @a therm_sneak