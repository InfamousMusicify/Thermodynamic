
#
#

# hard timer cap -so that i can kill left over armorstands.
#execute if score #cryopop_fuse therm.config < #kill_as therm.config run scoreboard players operation #cryopop_fuse therm.config = #kill_as therm.config
execute if score #cryopop_fuse therm.config matches 301.. run scoreboard players set #cryopop_fuse therm.config 300
execute if score #cryopop_fuse therm.config matches ..-1 run scoreboard players set #cryopop_fuse therm.config 0

#remove the sponge placing advancement
advancement revoke @s only thermodynamic:place_cryopop
#set the alignment to 0
scoreboard players set @s therm_track 0
#run the placement loop
execute unless score #cryopop therm.config matches 1.. as @s[tag=!thermodynamic_off] anchored eyes positioned ^ ^ ^7 anchored feet run function thermodynamic:cryopop/place_loop
#