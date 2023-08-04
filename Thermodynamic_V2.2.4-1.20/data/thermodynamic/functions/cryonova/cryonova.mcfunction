

# cryo_nova
# 
#
#


fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:blue_ice
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:blue_ice
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:blue_ice
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace minecraft:blue_ice
# kills main source  ---for bigger bpmbs players may be able to get some ammo back, but is this really a huge issue given the risk and cost overall and how little you can actually move in this fashion rapid placing netherite....
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:netherite_block
# smal sphere #bugfux fo 1s schedule# 
#fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:netherite_block
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:netherite_block
#fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace minecraft:netherite_block


# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:netherite_block
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:blue_ice
# Blow things away    -prev: Magma master Killer #fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:magma_block
#summon minecraft:tnt ~ ~ ~ {fuse:0s}

#fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air destroy
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air destroy
#fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air destroy

#fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air

# Obi quick dry
#fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace minecraft:lava
#fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:lava
#fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace minecraft:lava

# Condense
#fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:air replace minecraft:water
# old
#fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:waterlog
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:waterlog
#fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:waterlog
#
#fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]

# cherry size
#fill ~-3 ~-5 ~-3 ~3 ~5 ~3 minecraft:air replace #minecraft:waterlog
#fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace #minecraft:waterlog
#fill ~-5 ~-3 ~-5 ~5 ~3 ~5 minecraft:air replace #minecraft:waterlog
#
#fill ~-3 ~-5 ~-3 ~3 ~5 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~-5 ~-3 ~-5 ~5 ~3 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
# shrunken cheery
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace #minecraft:waterlog
fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:air replace #minecraft:waterlog
fill ~-5 ~-1 ~-5 ~5 ~1 ~5 minecraft:air replace #minecraft:waterlog
#
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-4 ~-2 ~-4 ~4 ~2 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-1 ~-5 ~5 ~1 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]

# Lava Cool
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:basalt replace minecraft:lava
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:basalt replace minecraft:lava
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:basalt replace minecraft:lava
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:basalt replace minecraft:lava
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:basalt replace minecraft:lava

fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:basalt replace minecraft:magma_block
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:basalt replace minecraft:magma_block
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:basalt replace minecraft:magma_block
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:basalt replace minecraft:magma_block
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:basalt replace minecraft:magma_block

# non game breaking destroy center blast -moved down for logic order
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:dustlog
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:dustlog
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:dustlog

# conduit
fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water   -turn all things to air for thermite
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:ice replace #minecraft:drylog[waterlogged=true]

# Everything    -redundancy for water itself.
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:ice replace #minecraft:waterlog
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:ice replace #minecraft:waterlog
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:ice replace #minecraft:waterlog
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:ice replace #minecraft:waterlog
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:ice replace #minecraft:waterlog


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #cryonova_efct therm.config matches 1.. as @e[sort=nearest,distance=..30] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryonova_entity,limit=1,sort=nearest] run function thermodynamic:cryonova/effect
# Viusals
execute unless score #cryonova_vis therm.config matches 1.. run function thermodynamic:cryonova/particles
# SFX
execute unless score #cryonova_sfx therm.config matches 1.. run function thermodynamic:cryonova/sounds



# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=cryonova_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
#kill @e[type=minecraft:armor_stand,tag=azide_entity]
kill @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=!fuse]

