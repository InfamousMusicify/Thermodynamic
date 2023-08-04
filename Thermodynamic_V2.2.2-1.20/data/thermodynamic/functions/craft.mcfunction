# craft

kill @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}},distance=..1]

kill @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:blue_ice",Count:1b}},distance=..1]

data merge entity @s {Item:{Count:1b,tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']},Tags:["Thermodynamic"]}}}
# effects
particle minecraft:poof ~ ~.55 ~ .1 .1 .1 .01 6 force
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 1
#playsound minecraft:block.wart_block.step master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..16]
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..16]
