# Load


##### main ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
scoreboard objectives add thermodynamic trigger
scoreboard objectives add thermo_craft minecraft.used:minecraft.pig_spawn_egg
scoreboard objectives add bomb_time dummy
#scoreboard objectives add thermo_cycle dummy
#advancement revoke @a only thermodynamic:thermo_cycle_adv
#advancement revoke @a only thermodynamic:use_thermo_cycle

##### cryo-bomb ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
scoreboard objectives add cryobomb dummy
scoreboard objectives add m_cryobomb dummy
# scoreboard objectives add cryo_sneak minecraft.custom:minecraft.sneak_time
#advancement revoke @a only cryobomb:cryobomb/trigger/place_cryobomb
#advancement revoke @a only cryobomb:cryobomb/trigger/place_m_cryobomb

##### thermite ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
scoreboard objectives add thermite dummy
#advancement revoke @a only thermite:thermite/trigger/place_thermite
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 


#schedule clear thermodynamic:tick
#clear thermodynamic:tick_1s
#schedule function thermodynamic:tick 1s
#schedule function thermodynamic:tick_1s 1s


