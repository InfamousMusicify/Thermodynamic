

# cryo_nova
# 
#
#
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
# kills main source  ---for bigger bpmbs players may be able to get some ammo back, but is this really a huge issue given the risk and cost overall and how little you can actually move in this fashion rapid placing netherite....
#og# fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:netherite_block
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air replace minecraft:netherite_block
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:netherite_block
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace minecraft:netherite_block
# fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:netherite_block
#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:blue_ice
# Blow things away    -prev: Magma master Killer #fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:magma_block
#summon minecraft:tnt ~ ~ ~ {fuse:0s}

fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:air destroy
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air destroy
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air destroy

#fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air

#fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air destroy
#fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air destroy
#fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air destroy


# Obi quick dry
#fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace minecraft:lava
#fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:lava
#fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace minecraft:lava

# Condense
#fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:air replace minecraft:water

# Lava Cool
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:basalt replace minecraft:lava
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:basalt replace minecraft:lava
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:basalt replace minecraft:lava
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:basalt replace minecraft:lava
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:basalt replace minecraft:lava

fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:basalt replace minecraft:magma_block
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:basalt replace minecraft:magma_block
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:basalt replace minecraft:magma_block
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:basalt replace minecraft:magma_block
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:basalt replace minecraft:magma_block

# conduit
fill ~20 ~-9 ~20 ~-20 ~9 ~-20 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water   -turn all things to air for thermite
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:air replace #minecraft:drylog[waterlogged=true]

# Everything    -redundancy for water itself.
fill ~-15 ~-9 ~-15 ~15 ~9 ~15 minecraft:ice replace #minecraft:waterlog
fill ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:ice replace #minecraft:waterlog
fill ~-17 ~-7 ~-17 ~17 ~7 ~17 minecraft:ice replace #minecraft:waterlog
fill ~-18 ~-6 ~-18 ~18 ~6 ~18 minecraft:ice replace #minecraft:waterlog
fill ~-19 ~-5 ~-19 ~19 ~5 ~19 minecraft:ice replace #minecraft:waterlog


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #cryonova_efct therm.config matches 1.. as @e[sort=nearest,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=azide_entity,sort=nearest] run function thermodynamic:cryonova/effect
# Viusals
execute unless score #cryonova_vis therm.config matches 1.. run function thermodynamic:cryonova/particles
# SFX
execute unless score #cryonova_sfx therm.config matches 1.. run function thermodynamic:cryonova/sounds

# Kill AS
#kill @e[type=minecraft:armor_stand,tag=azide_entity]
kill @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=!fuse]

