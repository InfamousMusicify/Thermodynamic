# rosite
#
#



# kill main source
fill ~ ~ ~ ~ ~ ~ minecraft:basalt 
#fill ~ ~ ~ ~ ~ ~ minecraft:basalt replace minecraft:coal_block
# Magma Block Killer
fill ~-1 ~ ~ ~1 ~ ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~-1 ~ ~ ~1 ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~ ~-1 ~ ~ ~1 minecraft:basalt replace minecraft:magma_block

# bedrock melter
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~ ~ ~1 ~ ~ minecraft:magma_block replace minecraft:bedrock
execute if score #quick_mine therm.config matches 1.. run fill ~ ~-1 ~ ~ ~1 ~ minecraft:magma_block replace minecraft:bedrock
execute if score #quick_mine therm.config matches 1.. run fill ~ ~ ~-1 ~ ~ ~1 minecraft:magma_block replace minecraft:bedrock

# non game breaking destroy center blast
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:cinderlog

# blast away weak blocks
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:dust

#Obi quick dry
fill ~-1 ~ ~ ~1 ~ ~ minecraft:basalt replace minecraft:obsidian
fill ~ ~-1 ~ ~ ~1 ~ minecraft:basalt replace minecraft:obsidian
fill ~ ~ ~-1 ~ ~ ~1 minecraft:basalt replace minecraft:obsidian

# Obi melt
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:magma_block replace minecraft:obsidian
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:magma_block replace minecraft:obsidian
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:magma_block replace minecraft:obsidian

# melt -stones -sand
execute if score #quick_mine therm.config matches 1.. run function thermodynamic:rosite/melt


# conduit
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# water itself
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:waterlog
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:waterlog
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:waterlog
# Waterlogged
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
# Ice
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:ice
fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:ice




# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #rosite_efct therm.config matches 1.. as @e[sort=nearest,distance=..4] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=rosite_entity,limit=1,sort=nearest] run function thermodynamic:rosite/effect

# Viusals
execute unless score #rosite_vis therm.config matches 1.. run function thermodynamic:rosite/particles
# SFX
execute unless score #rosite_sfx therm.config matches 1.. run function thermodynamic:rosite/sounds


# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=rosite_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=rosite_entity,tag=!fuse]


