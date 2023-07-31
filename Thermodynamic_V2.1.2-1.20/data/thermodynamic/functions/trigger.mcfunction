

# Debate: make 0 work, fire on -1 in tick?
# would have to rewrite this logic a bit and may have to add a score tweaker to new and logout

# main msg
execute as @s[scores={thermodynamic=0},tag=!fuse_tweak] run function thermodynamic:trigger/msg

# change -old for default 0 system
##### execute as @s[scores={thermodynamic=-1},tag=fuse_tweak] run scoreboard players set @s thermodynamic 0
# kill fuse when entering fuse times
execute as @s[scores={thermodynamic=0..},tag=fuse_tweak] run scoreboard players set @s therm_killfuse 0
# toggle
execute as @s[scores={thermodynamic=-0..},tag=therm_power] run function thermodynamic:trigger/power_set
execute as @s[scores={thermodynamic=-0..},tag=therm_sneak] run function thermodynamic:trigger/sneak_set
# fuse
execute as @s[scores={thermodynamic=-0..},tag=fuse_azide] run function thermodynamic:trigger/azide_set
execute as @s[scores={thermodynamic=-0..},tag=fuse_thermite] run function thermodynamic:trigger/thermite_set
execute as @s[scores={thermodynamic=-0..},tag=fuse_cryonova] run function thermodynamic:trigger/cryonova_set
execute as @s[scores={thermodynamic=-0..},tag=fuse_cryobomb] run function thermodynamic:trigger/cryobomb_set
execute as @s[scores={thermodynamic=-0..},tag=fuse_cryocherry] run function thermodynamic:trigger/cryocherry_set
execute as @s[scores={thermodynamic=-0..},tag=fuse_cryopop] run function thermodynamic:trigger/cryopop_set

# pick
# toggle
execute as @s[scores={thermodynamic=50},tag=!fuse_tweak] run function thermodynamic:trigger/power
execute as @s[scores={thermodynamic=60},tag=!fuse_tweak] run function thermodynamic:trigger/sneak
# fuse
execute as @s[scores={thermodynamic=100},tag=!fuse_tweak] run function thermodynamic:trigger/azide
execute as @s[scores={thermodynamic=200},tag=!fuse_tweak] run function thermodynamic:trigger/thermite
execute as @s[scores={thermodynamic=300},tag=!fuse_tweak] run function thermodynamic:trigger/cryonova
execute as @s[scores={thermodynamic=400},tag=!fuse_tweak] run function thermodynamic:trigger/cryobomb
execute as @s[scores={thermodynamic=500},tag=!fuse_tweak] run function thermodynamic:trigger/cryocherry
execute as @s[scores={thermodynamic=600},tag=!fuse_tweak] run function thermodynamic:trigger/cryopop


scoreboard players enable @s thermodynamic
scoreboard players set @s thermodynamic -1



