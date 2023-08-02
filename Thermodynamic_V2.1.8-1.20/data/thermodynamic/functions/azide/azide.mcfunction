# aziroazide_azide
# Azide
#
#


fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
# kills ancinet debris better
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:netherite_block
# smal sphere #bugfux fo 1s schedule# 
#fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:netherite_block
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:netherite_block
#fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace minecraft:netherite_block


# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:netherite_block
# Blow things away               -prev: Magma master Killer #fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:magma_block
#fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air destroy
#fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air destroy
#fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air destroy
#summon minecraft:tnt ~ ~ ~ {fuse:0s}
#fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air


# just for fun overpowered quick mining thing
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:air replace #minecraft:cinderlog
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:air replace #minecraft:cinderlog
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:air replace #minecraft:cinderlog
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:air replace #minecraft:cinderlog
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:air replace #minecraft:cinderlog

# Obi quick dry
fill ~-4 ~-7 ~-4 ~4 ~7 ~4 minecraft:basalt replace minecraft:obsidian
fill ~-5 ~-6 ~-5 ~5 ~6 ~5 minecraft:basalt replace minecraft:obsidian
fill ~-6 ~-5 ~-6 ~6 ~5 ~6 minecraft:basalt replace minecraft:obsidian

# non game breaking destroy center blast -moved down for logic order
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace #minecraft:dustlog
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace #minecraft:dustlog
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace #minecraft:dustlog

# Condense
fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:air replace minecraft:water

# Obsidian Melter
#fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:magma_block replace minecraft:obsidian
#fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:magma_block replace minecraft:obsidian
#fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:magma_block replace minecraft:obsidian
#fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:magma_block replace minecraft:obsidian
#fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:magma_block replace minecraft:obsidian

# melt everything- stone and obi
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:magma_block replace #minecraft:meltlog
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:magma_block replace #minecraft:meltlog
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:magma_block replace #minecraft:meltlog
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:magma_block replace #minecraft:meltlog
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:magma_block replace #minecraft:meltlog

# sand to glass panes
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:glass_pane replace minecraft:sand
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:glass_pane replace minecraft:sand
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:glass_pane replace minecraft:sand
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:glass_pane replace minecraft:sand
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:glass_pane replace minecraft:sand
# sandstone to glass
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:glass replace minecraft:sandstone
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:glass replace minecraft:sandstone
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:glass replace minecraft:sandstone
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:glass replace minecraft:sandstone
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:glass replace minecraft:sandstone

# redsand to glass panes
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:orange_stained_glass_pane replace minecraft:red_sand
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:orange_stained_glass_pane replace minecraft:red_sand
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:orange_stained_glass_pane replace minecraft:red_sand
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:orange_stained_glass_pane replace minecraft:red_sand
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:orange_stained_glass_pane replace minecraft:red_sand
# redsandstone to glass
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:orange_stained_glass replace minecraft:red_sandstone
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:orange_stained_glass replace minecraft:red_sandstone
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:orange_stained_glass replace minecraft:red_sandstone
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:orange_stained_glass replace minecraft:red_sandstone
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:orange_stained_glass replace minecraft:red_sandstone


# conduit
fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water   -turn all things to air for thermite
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:air replace #minecraft:drylog[waterlogged=true]

# Everything    -redundancy for water itself.
fill ~-20 ~-9 ~-20 ~20 ~9 ~20 minecraft:air replace #minecraft:waterlog
fill ~-21 ~-8 ~-21 ~21 ~8 ~21 minecraft:air replace #minecraft:waterlog
fill ~-22 ~-7 ~-22 ~22 ~7 ~22 minecraft:air replace #minecraft:waterlog
fill ~-23 ~-6 ~-23 ~23 ~6 ~23 minecraft:air replace #minecraft:waterlog
fill ~-24 ~-5 ~-24 ~24 ~5 ~24 minecraft:air replace #minecraft:waterlog

# Ice
fill ~-16 ~-7 ~-16 ~16 ~7 ~16 minecraft:air replace minecraft:ice
fill ~-17 ~-6 ~-17 ~17 ~6 ~17 minecraft:air replace minecraft:ice
fill ~-18 ~-5 ~-18 ~18 ~5 ~18 minecraft:air replace minecraft:ice
fill ~-19 ~-4 ~-19 ~19 ~4 ~19 minecraft:air replace minecraft:ice
fill ~-20 ~-3 ~-20 ~20 ~3 ~20 minecraft:air replace minecraft:ice



# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #azide_efct therm.config matches 1.. as @e[sort=nearest,distance=..30] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=azide_entity,limit=1,sort=nearest] run function thermodynamic:azide/effect

# Viusals
execute unless score #azide_vis therm.config matches 1.. run function thermodynamic:azide/particles
# SFX
execute unless score #azide_sfx therm.config matches 1.. run function thermodynamic:azide/sounds

# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=azide_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
#kill @e[type=minecraft:armor_stand,tag=azide_entity]
kill @e[type=minecraft:armor_stand,tag=azide_entity,tag=!fuse]


