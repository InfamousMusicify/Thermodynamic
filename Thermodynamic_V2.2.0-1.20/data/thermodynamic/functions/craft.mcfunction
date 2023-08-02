# craft
#tag all legging types
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}},sort=nearest,distance=..8] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:golden_leggings",Count:1b}},sort=nearest,distance=..8] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:chainmail_leggings",Count:1b}},sort=nearest,distance=..8] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}},sort=nearest,distance=..8] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}},sort=nearest,distance=..8] add therm_legs
tag @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:netherite_leggings",Count:1b}},sort=nearest,distance=..8] add therm_legs
# data merge
execute as @e[limit=1,type=minecraft:item,sort=nearest,distance=..8,tag=therm_legs] run data merge entity @s {Item:{Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
# effects
execute at @e[limit=1,type=minecraft:item,sort=nearest,distance=..8,tag=therm_legs] run particle minecraft:poof ~ ~.55 ~ .1 .1 .1 .01 6 force
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.wart_block.step master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..16]
