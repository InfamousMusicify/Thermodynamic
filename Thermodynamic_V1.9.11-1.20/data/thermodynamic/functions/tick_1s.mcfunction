# tick
schedule function thermodynamic:tick_1s 1s

#execute as @e[type=minecraft:armor_stand,tag=cryonuke_entity,tag=fuse] run function thermodynamic:cryonuke/fuse

execute as @a[scores={therm_logout=1..}] run function thermodynamic:logout

scoreboard players enable @a thermodynamic
execute as @a[scores={thermodynamic=1..}] run function thermodynamic:toggle
execute as @a[scores={thermodynamic=-1}] run function thermodynamic:toggle
#execute as @a[scores={thermodynamic=1}] run function thermodynamic:toggle_off
#execute as @a[scores={thermodynamic=3..}] run function thermodynamic:toggle_on
#scoreboard players enable @a therm-fuse
#execute as @a[scores={therm-fuse=1..}] run function thermodynamic:trigger_fuse
#execute as @a[scores={therm-fuse=..-1}] run function thermodynamic:trigger_fuse
#execute as @a[scores={therm-fuse=-1}] run function thermodynamic:trigger_fuse_off

execute as @a[scores={therm_craft=1..}] run function thermodynamic:craft_start

#at @e[type=minecraft:armor_stand,tag=cryonuke_entity,tag=!fuse] 
#execute as @a[scores={cryo_nuke=1..}] run function cryobomb:place_cryobomb/place_cryonuke
#scoreboard players reset @a cryo_nuke
#execute if entity @s[scores={thermo_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryonuke_entity,tag=!fuse]
#scoreboard players reset @a therm_sneak