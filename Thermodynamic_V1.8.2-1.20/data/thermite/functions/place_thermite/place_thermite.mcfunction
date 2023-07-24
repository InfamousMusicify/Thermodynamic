# thermite/place_thermite
#
#

#remove the sponge placing advancement
advancement revoke @s only thermite:thermite/trigger/place_thermite

#set the alignment to 0
scoreboard players set @s thermite 0

#run the placement loop
execute if entity @s[scores={thermodynamic=0}] run execute as @s anchored eyes positioned ^ ^ ^7 anchored feet run function thermite:place_thermite/place_thermite_loop

