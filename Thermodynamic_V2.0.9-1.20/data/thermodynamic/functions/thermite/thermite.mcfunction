# thermite
#
#

# kills ancinet debris better
fill ~ ~ ~ ~ ~ ~ minecraft:basalt replace minecraft:ancient_debris
#bugfux fo 1s schedule# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:ancient_debris
# Magma Block Killer
fill ~ ~1 ~ ~ ~-1 ~ minecraft:basalt replace minecraft:magma_block
fill ~1 ~ ~ ~-1 ~ ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~ ~1 ~ ~ ~-1 minecraft:basalt replace minecraft:magma_block
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
# conduit
fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water   -turn all things to air for thermite
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:air replace #minecraft:drylog[waterlogged=true]

# Everything    -redundancy for water itself.
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:air replace #minecraft:waterlog
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:air replace #minecraft:waterlog
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:air replace #minecraft:waterlog
fill ~-7 ~-4 ~-7 ~7 ~4 ~7 minecraft:air replace #minecraft:waterlog

# Ice
fill ~-2 ~-5 ~-2 ~2 ~5 ~2 minecraft:air replace minecraft:ice
fill ~-3 ~-4 ~-3 ~3 ~4 ~3 minecraft:air replace minecraft:ice
fill ~-4 ~-3 ~-4 ~4 ~3 ~4 minecraft:air replace minecraft:ice



# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #thermite_efct therm.config matches 1.. as @e[sort=nearest,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=therm_entity,limit=1,tag=!fuse,sort=nearest] run function thermite:effect

# Viusals
execute unless score #thermite_vis therm.config matches 1.. run function thermodynamic:thermite/particles
# SFX
execute unless score #thermite_sfx therm.config matches 1.. run function thermodynamic:thermite/sounds

# Kill AS
kill @e[type=minecraft:armor_stand,tag=therm_entity]


