# flameite
#
#




# kill main source
fill ~ ~ ~ ~ ~ ~ minecraft:basalt
#fill ~ ~ ~ ~ ~ ~ minecraft:basalt replace minecraft:obsidian
# Magma Block Killer
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:basalt replace minecraft:magma_block
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:basalt replace minecraft:magma_block


# bedrock melter
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:magma_block replace minecraft:bedrock
execute if score #quick_mine therm.config matches 1.. run fill ~ ~1 ~ ~ ~-1 ~ minecraft:magma_block replace minecraft:bedrock

# blow away dust
# non game breaking destroy center blast
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace #minecraft:cinderlog

# blast away weak blocks
execute if score #quick_mine therm.config matches 1.. run fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:air replace #minecraft:dust

#Obi quick dry
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:basalt replace minecraft:obsidian
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:basalt replace minecraft:obsidian

# Obi melt
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:magma_block replace minecraft:obsidian
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:magma_block replace minecraft:obsidian
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:magma_block replace minecraft:obsidian

# melt -stones -sand
execute if score #quick_mine therm.config matches 1.. run function thermodynamic:flameite/melt


# conduit
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# water itself
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:air replace #minecraft:waterlog
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:air replace #minecraft:waterlog
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:air replace #minecraft:waterlog
# Waterlogged
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
# Ice  -smaller sphere
fill ~ ~-3 ~ ~ ~3 ~ minecraft:air replace minecraft:ice
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:ice
fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air replace minecraft:ice

##### refine sounds and particles
# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #flameite_efct therm.config matches 1.. as @e[sort=nearest,distance=..4] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=flameite_entity,limit=1,sort=nearest] run function thermodynamic:flameite/effect

# Viusals
execute unless score #flameite_vis therm.config matches 1.. run function thermodynamic:flameite/particles
# SFX
execute unless score #flameite_sfx therm.config matches 1.. run function thermodynamic:flameite/sounds


# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=flameite_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=flameite_entity,tag=!fuse]


