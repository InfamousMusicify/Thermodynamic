#

execute at @s at @e[sort=nearest,type=minecraft:armor_stand,tag=therm_craft,limit=1] run function thermodynamic:craft/therm_old
execute as @e[type=minecraft:armor_stand,sort=nearest,tag=therm_craft] run kill @s
scoreboard players set @s therm_craft 0
# # #

# Redundancy for busy servers
#execute if score #last thermodynamic.config matches 2147483646.. run function thermodynamic:reinstall
