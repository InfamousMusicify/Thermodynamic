# cryocherry
#
#

#OG# fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:packed_ice
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:packed_ice
# Magma Block Killer
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:basalt replace minecraft:magma_block
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
# stop lava filter
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Lava Cool
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:magma_block replace minecraft:lava
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:magma_block replace minecraft:lava
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:magma_block replace minecraft:lava
# conduit
fill ~-6 ~-7 ~-6 ~6 ~5 ~6 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Condense
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:water
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:water
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace minecraft:water
# Water
fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
# everything
fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:ice replace #minecraft:waterlog
fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:ice replace #minecraft:waterlog
fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:ice replace #minecraft:waterlog
# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Armored Elytras will all make you immune to the blasts.)
execute unless score #cryocherry_efct therm.config matches 1.. as @e[distance=..4,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryocherry_entity,sort=nearest] run function thermodynamic:cryocherry/effect

# Viusals
execute unless score #cryocherry_vis therm.config matches 1.. run function thermodynamic:cryocherry/particles
# SFX
execute unless score #cryocherry_sfx therm.config matches 1.. run function thermodynamic:cryocherry/sounds


# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse]
#


