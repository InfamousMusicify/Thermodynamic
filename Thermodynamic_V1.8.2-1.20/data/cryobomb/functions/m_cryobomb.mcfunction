# cryobomb
#
#

fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:packed_ice
# Magma Block Killer
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
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
execute as @e[distance=..4,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=m_cryo_entity,distance=..4] run function cryobomb:meffect

# Viusals
particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
particle minecraft:poof ~ ~.55 ~ 2 2 2 1 125 force
# SFX
playsound minecraft:block.conduit.attack.target master @a[distance=..25] ~ ~ ~
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..25] ~ ~ ~
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~

# Kill AS
kill @e[type=minecraft:armor_stand,tag=m_cryo_entity]
#