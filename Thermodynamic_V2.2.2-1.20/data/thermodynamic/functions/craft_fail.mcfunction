# craft_fail

# tellraw @s ["",{"text":"failed to craft","color":"dark_gray"}]
# data merge entity @s {Motion:[0d,0d,0d]}


#effect give @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}},distance=..1] minecraft:levitation 1 1
#effect give @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:blue_ice",Count:1b}},distance=..1] minecraft:levitation 1 1


data merge entity @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}},distance=..1] {Motion:[0.1d,0.3d,0d]}
data merge entity @e[limit=1,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:blue_ice",Count:1b}},distance=..1] {Motion:[-0.1d,0.3d,0d]}

