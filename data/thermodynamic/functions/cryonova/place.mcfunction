# place_cryonova


#remove the sponge placing advancement
advancement revoke @s only thermodynamic:place_cryonova

#set the alignment to 0
scoreboard players set @s therm_track 0

#run the placement loop
#execute unless score #cryonova therm.config matches 1.. as @s[tag=!thermodynamic_off] anchored eyes positioned ^ ^ ^7 anchored feet run function thermodynamic:cryonova/place_loop
execute unless score #cryonova therm.config matches 1.. as @s[tag=!thermodynamic_off] anchored eyes positioned ^ ^ ^5 anchored feet unless entity @e[tag=cryonova_entity,tag=fuse,sort=nearest,distance=..4] run function thermodynamic:cryonova/place_loop