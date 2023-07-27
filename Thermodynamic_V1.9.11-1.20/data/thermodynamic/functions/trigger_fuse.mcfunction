


# change
execute as @s[scores={therm-fuse=-1},tag=fuse_tweak] run scoreboard players set @s therm-fuse 0
execute as @a[scores={therm-fuse=-1..},tag=fuse_azide] run function thermodynamic:trigger_fuse/azide_set
execute as @a[scores={therm-fuse=-1..},tag=fuse_thermite] run function thermodynamic:trigger_fuse/thermite_set
execute as @a[scores={therm-fuse=-1..},tag=fuse_cryonova] run function thermodynamic:trigger_fuse/cryonova_set
execute as @a[scores={therm-fuse=-1..},tag=fuse_cryobomb] run function thermodynamic:trigger_fuse/cryobomb_set
execute as @a[scores={therm-fuse=-1..},tag=fuse_cryocherry] run function thermodynamic:trigger_fuse/cryocherry_set
execute as @a[scores={therm-fuse=-1..},tag=fuse_cryopop] run function thermodynamic:trigger_fuse/cryopop_set

# main msg
execute as @a[scores={therm-fuse=1},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/msg
# pick
#execute as @a[scores={therm-fuse=10},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/power
execute as @a[scores={therm-fuse=11},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/azide
execute as @a[scores={therm-fuse=12},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/thermite
execute as @a[scores={therm-fuse=13},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/cryonova
execute as @a[scores={therm-fuse=14},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/cryobomb
execute as @a[scores={therm-fuse=15},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/cryocherry
execute as @a[scores={therm-fuse=16},tag=!fuse_tweak] run function thermodynamic:trigger_fuse/cryopop




scoreboard players set @s therm-fuse 0