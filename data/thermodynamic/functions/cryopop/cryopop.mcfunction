# cryopop
#
#


# kill main source
fill ~ ~ ~ ~ ~ ~ minecraft:air
#fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ice
# Magma Block Killer
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:magma_block
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:magma_block
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace minecraft:magma_block

# lava Killer
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:lava
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:lava
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace minecraft:lava

# Lava Cool
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:magma_block replace minecraft:lava
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:magma_block replace minecraft:lava
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:magma_block replace minecraft:lava
# magma cool
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:basalt replace minecraft:magma_block
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:magma_block
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:basalt replace minecraft:magma_block


# conduit
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# air cavern -dis with a hole
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace #minecraft:waterlog
fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace #minecraft:waterlog
#
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace #minecraft:drylog[waterlogged=true]
# water to ice
# water itself
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:ice replace #minecraft:waterlog
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:ice replace #minecraft:waterlog
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:ice replace #minecraft:waterlog
# Waterlogged
fill ~-1 ~-3 ~-1 ~1 ~3 ~1 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:ice replace #minecraft:drylog[waterlogged=true]
fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:ice replace #minecraft:drylog[waterlogged=true]



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


