# place_cryobomb/placecrobomb
#
#

#remove the sponge placing advancement
advancement revoke @s only thermodynamic:place_cryobomb
#set the alignment to 0
scoreboard players set @s therm_track 0
#run the placement loop
execute as @s[tag=!thermodynamic_off] anchored eyes positioned ^ ^ ^7 anchored feet run function thermodynamic:cryobomb/place_loop
#