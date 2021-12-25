# thermodynamic/place_thermo_stop
#remove the sponge placing advancement
advancement revoke @s only thermodynamic:thermo_stop

#set the alignment to 0
scoreboard players set @s thermo_stop 0

#run the placement loop
execute as @s anchored eyes positioned ^ ^ ^7 anchored feet run function thermodynamic:place_thermo_stop/place_thermo_stop_loop

