# place_cryocherry/placecrobomb


#remove the sponge placing advancement
advancement revoke @s only thermodynamic:place_cryocherry
#set the alignment to 0
scoreboard players set @s therm_track 0
#run the placement loop
execute unless score #cryocherry therm.config matches 1.. as @s[tag=!thermodynamic_off] anchored eyes positioned ^ ^ ^7 anchored feet run function thermodynamic:cryocherry/place_loop
#
