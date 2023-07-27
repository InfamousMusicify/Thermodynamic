# aziroazide_azide
# Azide
#
#


fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
# kills ancinet debris better
#OG# fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:netherite_block
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:netherite_block
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:netherite_block
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace minecraft:netherite_block
# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:netherite_block
# Blow things away    -prev: Magma master Killer #fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:magma_block
#summon minecraft:tnt ~ ~ ~ {fuse:0s}
#fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air

fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air destroy
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air destroy
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air destroy

# Obi quick dry
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:basalt replace minecraft:obsidian
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:basalt replace minecraft:obsidian
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:basalt replace minecraft:obsidian

# Condense
fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:air replace minecraft:water

# Obsidian Melter
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:magma_block replace minecraft:obsidian
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:magma_block replace minecraft:obsidian
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:magma_block replace minecraft:obsidian
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:magma_block replace minecraft:obsidian
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:magma_block replace minecraft:obsidian

# conduit
fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water   -turn all things to air for thermite
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:air replace #minecraft:drylog[waterlogged=true]

# Everything    -redundancy for water itself.
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:air replace #minecraft:waterlog
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:air replace #minecraft:waterlog
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:air replace #minecraft:waterlog
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:air replace #minecraft:waterlog
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:air replace #minecraft:waterlog
# Ice
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:air replace minecraft:ice
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:air replace minecraft:ice
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:air replace minecraft:ice
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:air replace minecraft:ice
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:air replace minecraft:ice


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #azide_efct therm.config matches 1.. as @e[sort=nearest,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=azide_entity,sort=nearest] run function thermodynamic:azide/effect
# Viusals
execute unless score #azide_vis therm.config matches 1.. run function thermodynamic:azide/particles
# SFX
execute unless score #azide_sfx therm.config matches 1.. run function thermodynamic:azide/sounds
# Kill AS
#kill @e[type=minecraft:armor_stand,tag=azide_entity]
kill @e[type=minecraft:armor_stand,tag=azide_entity,tag=!fuse]

