# cryocherry
#
#

# kill main source
fill ~ ~ ~ ~ ~ ~ minecraft:air
#fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:packed_ice
# Magma Block Killer
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:magma_block

# dust nether
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:netherdustlog
execute if score #quick_mine therm.config matches 1.. run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace #minecraft:netherdustlog

# lava Killer
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:lava
fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:lava

# Lava Cool
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:magma_block replace minecraft:lava
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:magma_block replace minecraft:lava
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:magma_block replace minecraft:lava
# magma cool
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:basalt replace minecraft:magma_block
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:basalt replace minecraft:magma_block
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:basalt replace minecraft:magma_block

# freeze nether
execute if score #quick_mine therm.config matches 1.. run fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:basalt replace #minecraft:netherlog
execute if score #quick_mine therm.config matches 1.. run fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:basalt replace #minecraft:netherlog
execute if score #quick_mine therm.config matches 1.. run fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:basalt replace #minecraft:netherlog

# conduit
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# air cavern -smallest sphere
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:waterlog
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace #minecraft:waterlog
#
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace #minecraft:drylog[waterlogged=true]
# water to ice
# water itself
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:ice replace #minecraft:waterlog
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:ice replace #minecraft:waterlog
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:ice replace #minecraft:waterlog
# Waterlogged
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:ice replace #minecraft:drylog[waterlogged=true]


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Armored Elytras will all make you immune to the blasts.)
execute unless score #cryocherry_efct therm.config matches 1.. as @e[sort=nearest,distance=..5] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryocherry_entity,limit=1,sort=nearest] run function thermodynamic:cryocherry/effect

# Viusals
execute unless score #cryocherry_vis therm.config matches 1.. run function thermodynamic:cryocherry/particles
# SFX
execute unless score #cryocherry_sfx therm.config matches 1.. run function thermodynamic:cryocherry/sounds


# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=cryocherry_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse]
#





# examples
# wide squat
#fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:ice replace #minecraft:waterlog
#fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:ice replace #minecraft:waterlog
#fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:ice replace #minecraft:waterlog
#fill ~-6 ~-2 ~-6 ~6 ~2 ~6 minecraft:ice replace #minecraft:waterlog


# sphere balaced
#fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:ice replace #minecraft:drylog[waterlogged=true]
#fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:ice replace #minecraft:drylog[waterlogged=true]
#fill ~-5 ~-2 ~-5 ~5 ~2 ~5 minecraft:ice replace #minecraft:drylog[waterlogged=true]






##################### old notes from top:
#fill ~-7 ~-4 ~-7 ~5 ~4 ~7 minecraft:magma_block replace minecraft:lava

# Condense
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:waterlog
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~ ~2 ~ ~ ~-2 ~ minecraft:air replace #minecraft:waterlog
#fill ~ ~2 ~ ~ ~-2 ~ minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air replace #minecraft:waterlog
#fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:air replace #minecraft:drylog[waterlogged=true]



#fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:waterlog
#fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:waterlog
#fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:waterlog
#
#fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]