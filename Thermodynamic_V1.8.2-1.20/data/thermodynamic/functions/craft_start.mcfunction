#

execute at @s at @e[sort=nearest,type=minecraft:armor_stand,tag=thermo_craft,limit=1] run function thermodynamic:craft
execute as @e[type=minecraft:armor_stand,sort=nearest,tag=thermo_craft] run kill @s
scoreboard players set @s thermo_craft 0
# # #

# Redundancy for busy servers
#execute if score #last thermodynamic.config matches 2147483646.. run function thermodynamic:reinstall
