# thermite
#
#

# kills ancinet debris better
fill ~ ~ ~ ~ ~ ~ minecraft:basalt replace minecraft:ancient_debris
# Magma Block Killer
fill ~ ~1 ~ ~ ~-1 ~ minecraft:basalt replace minecraft:magma_block
fill ~1 ~ ~ ~-1 ~ ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~ ~1 ~ ~ ~-1 minecraft:basalt replace minecraft:magma_block
# Lava Cool
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:obsidian
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:magma_block replace minecraft:obsidian
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:magma_block replace minecraft:obsidian
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:magma_block replace minecraft:obsidian
# conduit
fill ~-6 ~-7 ~-6 ~6 ~5 ~6 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water   -turn all things to air for thermite
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:drylog[waterlogged=true]
# Everything    -redundancy for water itself.
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:waterlog
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:waterlog
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:waterlog
# Ice
fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air replace minecraft:ice
fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:ice
fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air replace minecraft:ice



# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute as @e[distance=..4,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=therm_entity,distance=..4] run function thermite:effect
# Viusals
particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
particle minecraft:lava ~ ~.55 ~ 4 4 4 1 250 force
particle minecraft:poof ~ ~.55 ~ 2 2 2 1 750 force
# SFX
playsound minecraft:entity.ender_dragon.flap master @a[distance=..25]
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..25]


# Kill AS
kill @e[type=minecraft:armor_stand,tag=therm_entity]


