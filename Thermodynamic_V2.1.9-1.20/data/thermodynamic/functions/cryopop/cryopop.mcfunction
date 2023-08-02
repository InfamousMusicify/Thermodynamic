# cryopop
#
#


##### make this smaller!  take fills from cherry and put here and shrink
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ice
#bugfux fo 1s schedule# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:ice
# Magma Block Killer
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:basalt replace minecraft:magma_block
fill ~-1 ~ ~ ~1 ~ ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~-1 ~ ~ ~1 ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~ ~-1 ~ ~ ~1 minecraft:basalt replace minecraft:magma_block
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
# stop lava filter
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Lava Cool
#fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:magma_block replace minecraft:lava
#fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:magma_block replace minecraft:lava
#fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:magma_block replace minecraft:lava

fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:magma_block replace minecraft:lava
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:magma_block replace minecraft:lava
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:magma_block replace minecraft:lava

# conduit
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Condense
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:water
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:water
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace minecraft:water
# Water
#fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
#fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]

fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:drylog[waterlogged=true]
# everything
#fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:ice replace #minecraft:waterlog
#fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:ice replace #minecraft:waterlog
#fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:ice replace #minecraft:waterlog

fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:ice replace #minecraft:waterlog
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:ice replace #minecraft:waterlog
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:ice replace #minecraft:waterlog


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Armored Elytras will all make you immune to the blasts.)
execute unless score #cryopop_efct therm.config matches 1.. as @e[sort=nearest,distance=..30] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryopop_entity,limit=1,sort=nearest] run function thermodynamic:cryopop/effect

# Viusals
execute unless score #cryopop_vis therm.config matches 1.. run function thermodynamic:cryopop/particles
# SFX
execute unless score #cryopop_sfx therm.config matches 1.. run function thermodynamic:cryopop/sounds



# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=cryopop_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse]
#


