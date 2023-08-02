# cryobomb
#
#

fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:blue_ice
#bugfux fo 1s schedule# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:blue_ice

# Magma Block Killer
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:magma_block
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:basalt replace minecraft:magma_block
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:magma_block
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:basalt replace minecraft:magma_block
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:magma_block
# stop lava filter
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Condense
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
# Lava Cool
#fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:basalt replace minecraft:magma_block
#fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:basalt replace minecraft:magma_block
#fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:basalt replace minecraft:magma_block

fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:basalt replace minecraft:lava
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:basalt replace minecraft:lava
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:basalt replace minecraft:lava
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:basalt replace minecraft:lava

#og# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
# conduit
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water - Replace "none redstone" componenets that are water logged
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:air replace #minecraft:drylog[waterlogged=true]
# replace water    -water itself and related.
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:ice replace #minecraft:waterlog
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:ice replace #minecraft:waterlog
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:ice replace #minecraft:waterlog
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:ice replace #minecraft:waterlog


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Armored Elytras will all make you immune to the blasts.)
execute unless score #cryobomb_efct therm.config matches 1.. as @e[sort=nearest,distance=..30] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryobomb_entity,limit=1,sort=nearest] run function thermodynamic:cryobomb/effect

# Viusals
execute unless score #cryobomb_vis therm.config matches 1.. run function thermodynamic:cryobomb/particles
# SFX
execute unless score #cryobomb_sfx therm.config matches 1.. run function thermodynamic:cryobomb/sounds


# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=cryobomb_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=!fuse]
#


