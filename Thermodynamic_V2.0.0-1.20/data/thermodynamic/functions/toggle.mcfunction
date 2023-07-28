

# main msg
execute as @a[scores={thermodynamic=1},tag=!fuse_tweak] run function thermodynamic:trigger/msg

# change
execute as @s[scores={thermodynamic=-1},tag=fuse_tweak] run scoreboard players set @s thermodynamic 0

execute as @a[scores={thermodynamic=-1..},tag=therm_power] run function thermodynamic:trigger/power_set
execute as @a[scores={thermodynamic=-1..},tag=fuse_azide] run function thermodynamic:trigger/azide_set
execute as @a[scores={thermodynamic=-1..},tag=fuse_thermite] run function thermodynamic:trigger/thermite_set
execute as @a[scores={thermodynamic=-1..},tag=fuse_cryonova] run function thermodynamic:trigger/cryonova_set
execute as @a[scores={thermodynamic=-1..},tag=fuse_cryobomb] run function thermodynamic:trigger/cryobomb_set
execute as @a[scores={thermodynamic=-1..},tag=fuse_cryocherry] run function thermodynamic:trigger/cryocherry_set
execute as @a[scores={thermodynamic=-1..},tag=fuse_cryopop] run function thermodynamic:trigger/cryopop_set


# pick
execute as @a[scores={thermodynamic=10},tag=!fuse_tweak] run function thermodynamic:trigger/power
execute as @a[scores={thermodynamic=11},tag=!fuse_tweak] run function thermodynamic:trigger/azide
execute as @a[scores={thermodynamic=12},tag=!fuse_tweak] run function thermodynamic:trigger/thermite
execute as @a[scores={thermodynamic=13},tag=!fuse_tweak] run function thermodynamic:trigger/cryonova
execute as @a[scores={thermodynamic=14},tag=!fuse_tweak] run function thermodynamic:trigger/cryobomb
execute as @a[scores={thermodynamic=15},tag=!fuse_tweak] run function thermodynamic:trigger/cryocherry
execute as @a[scores={thermodynamic=16},tag=!fuse_tweak] run function thermodynamic:trigger/cryopop


scoreboard players enable @s thermodynamic
scoreboard players set @s thermodynamic 0

#scoreboard players add @s[tag=!fuse_tweak] therm.config 1
#execute as @s[scores={thermodynamic=1..,therm.config=1},tag=!fuse_tweak] run function thermodynamic:toggle_on
#execute as @s[scores={therm.config=2..},tag=!fuse_tweak] run function thermodynamic:toggle_off



















scoreboard players set @s thermodynamic 0



