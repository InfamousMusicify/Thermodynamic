# thermite/place_thermite
#
#

#remove the sponge placing advancement
advancement revoke @s only thermodynamic:place_azide

#set the alignment to 0
scoreboard players set @s therm_track 0

#run the placement loop
execute unless score #azide therm.config matches 1.. as @s[tag=!thermodynamic_off] anchored eyes positioned ^ ^ ^5 anchored feet unless entity @e[tag=azide_entity,tag=fuse,sort=nearest,distance=..4] run function thermodynamic:azide/place_loop
