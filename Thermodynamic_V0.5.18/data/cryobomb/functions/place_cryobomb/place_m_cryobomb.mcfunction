# place_cryobomb/placecrobomb
#remove the sponge placing advancement
advancement revoke @s only cryobomb:cryobomb/trigger/place_m_cryobomb
#set the alignment to 0
scoreboard players set @s m_cryobomb 0
#run the placement loop
execute as @s anchored eyes positioned ^ ^ ^7 anchored feet run function cryobomb:place_cryobomb/place_m_cryobomb_loop
#