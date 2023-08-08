# 
#tag all legging types
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}},sort=nearest,distance=..1] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:golden_leggings",Count:1b}},sort=nearest,distance=..1] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:chainmail_leggings",Count:1b}},sort=nearest,distance=..1] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}},sort=nearest,distance=..1] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}},sort=nearest,distance=..1] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:netherite_leggings",Count:1b}},sort=nearest,distance=..1] add therm_legs
# data merge
execute as @e[limit=1,type=minecraft:item,sort=nearest,distance=..1,tag=therm_legs] run function thermodynamic:craft/therm

execute unless entity @e[limit=1,type=minecraft:item,sort=nearest,distance=..1,tag=therm_legs] run function thermodynamic:craft/therm_fail