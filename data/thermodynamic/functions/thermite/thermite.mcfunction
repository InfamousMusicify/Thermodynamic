# thermite
#
#

# kill main source
fill ~ ~ ~ ~ ~ ~ minecraft:basalt replace minecraft:ancient_debris
# Magma Block Killer
fill ~ ~1 ~ ~ ~-1 ~ minecraft:basalt replace minecraft:magma_block
fill ~1 ~ ~ ~-1 ~ ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~ ~1 ~ ~ ~-1 minecraft:basalt replace minecraft:magma_block

# blow away dust
# small sphere blow things away
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:cinderlog
# thermite dust remover
execute if score #quick_mine therm.config matches 1.. run fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:air replace #minecraft:dust

#Obi quick dry
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:obsidian
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:basalt replace minecraft:obsidian
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:obsidian
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:basalt replace minecraft:obsidian

# Obi melt
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:magma_block replace minecraft:obsidian
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:magma_block replace minecraft:obsidian
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:magma_block replace minecraft:obsidian
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:magma_block replace minecraft:obsidian

# melt -stones -sand
execute if score #quick_mine therm.config matches 1.. run function thermodynamic:thermite/melt


# conduit
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# water itself
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:air replace #minecraft:waterlog
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:air replace #minecraft:waterlog
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:air replace #minecraft:waterlog
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:air replace #minecraft:waterlog
# Waterlogged
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:air replace #minecraft:drylog[waterlogged=true]
# Ice  -smaller sphere
fill ~-2 ~-5 ~-2 ~2 ~5 ~2 minecraft:air replace minecraft:ice
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:air replace minecraft:ice
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:air replace minecraft:ice


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #thermite_efct therm.config matches 1.. as @e[sort=nearest,distance=..30] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=thermite_entity,limit=1,sort=nearest] run function thermodynamic:thermite/effect

# Viusals
execute unless score #thermite_vis therm.config matches 1.. run function thermodynamic:thermite/particles
# SFX
execute unless score #thermite_sfx therm.config matches 1.. run function thermodynamic:thermite/sounds


# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=thermite_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse]


