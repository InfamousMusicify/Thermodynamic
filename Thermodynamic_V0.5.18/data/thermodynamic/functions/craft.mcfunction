# craft thermoimmune
advancement revoke @s only thermodynamic:thermodynamic/thermoimmune_use_adv
# data merge entity @e[type=item] {Item:{id:"minecraft:iron_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}

data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:gold_leggings",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:gold_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:chainmail_leggings",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:chainmail_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:iron_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:diamond_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
data merge entity @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:netherite_leggings",Count:1b}},sort=nearest,distance=..15] {Item:{id:"minecraft:netherite_leggings",Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}

# data merge entity @e[limit=1,type=minecraft:item,sort=nearest,distance=..15] {tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}

# execute at @e[limit=1,type=minecraft:item,nbt={Item:{Count:1b}},sort=nearest,distance=..15] run particle minecraft:poof ~ ~.55 ~ .1 .1 .1 .01 6 force
# execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..15] run playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 1
# execute at @e[limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,distance=..15] run playsound minecraft:block.wart_block.step master @a[distance=..16] ~ ~ ~ 1 1

# execute at @e[limit=1,type=minecraft:item,sort=nearest,distance=..15] run 
execute at @e[limit=1,type=minecraft:item,sort=nearest,distance=..15] run particle minecraft:poof ~ ~.55 ~ .1 .1 .1 .01 6 force
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.wart_block.step master @a[distance=..16] ~ ~ ~ 1 1
