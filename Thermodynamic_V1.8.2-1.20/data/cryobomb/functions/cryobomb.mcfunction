# cryobomb
#
#

fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:blue_ice
# Magma Block Killer
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:magma_block
# stop lava filter
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Lava Cool
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:basalt replace minecraft:lava
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:basalt replace minecraft:lava
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:basalt replace minecraft:lava
# Condense
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
# conduit
fill ~-6 ~-7 ~-6 ~6 ~5 ~6 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water - Replace "none redstone" componenets that are water logged
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:drylog[waterlogged=true]
# replace water    -water itself and related.
fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:ice replace #minecraft:waterlog
fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:ice replace #minecraft:waterlog
fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:ice replace #minecraft:waterlog


# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Armored Elytras will all make you immune to the blasts.)
execute as @e[distance=..4,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryo_entity,distance=..4] run function cryobomb:effect

# Viusals
particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
particle minecraft:poof ~ ~.55 ~ 2 2 2 1 250 force
# SFX
playsound minecraft:entity.ender_dragon.shoot master @a[distance=..25]
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..25]


# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryo_entity]
#