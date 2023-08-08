# pinite
#
#



# kill main source
fill ~ ~ ~ ~ ~ ~ minecraft:basalt replace minecraft:coal_ore
# Magma Block Killer
fill ~-1 ~ ~ ~1 ~ ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~-1 ~ ~ ~1 ~ minecraft:basalt replace minecraft:magma_block
fill ~ ~ ~-1 ~ ~ ~1 minecraft:basalt replace minecraft:magma_block

# non game breaking destroy center blast
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:cinderlog
execute if score #quick_mine therm.config matches 1.. run fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:cinderlog

# blast away weak blocks
execute if score #quick_mine therm.config matches 1.. run fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:dust
execute if score #quick_mine therm.config matches 1.. run fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:dust

#Obi quick dry
#fill ~-1 ~ ~ ~1 ~ ~ minecraft:basalt replace minecraft:obsidian
#fill ~ ~-1 ~ ~ ~1 ~ minecraft:basalt replace minecraft:obsidian
#fill ~ ~ ~-1 ~ ~ ~1 minecraft:basalt replace minecraft:obsidian

# Obi melt
fill ~-1 ~ ~ ~1 ~ ~ minecraft:magma_block replace minecraft:obsidian
fill ~ ~-1 ~ ~ ~1 ~ minecraft:magma_block replace minecraft:obsidian
fill ~ ~ ~-1 ~ ~ ~1 minecraft:magma_block replace minecraft:obsidian

# melt -stones -sand
execute if score #quick_mine therm.config matches 1.. run function thermodynamic:pinite/melt


# conduit
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# water itself
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:waterlog
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:waterlog
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:waterlog
# Waterlogged
fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace #minecraft:drylog[waterlogged=true]
fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace #minecraft:drylog[waterlogged=true]
# Ice
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:ice
fill ~ ~1 ~ ~ ~-1 ~ minecraft:air replace minecraft:ice



####################### change to smaller sizes!
# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute unless score #pinite_efct therm.config matches 1.. as @e[sort=nearest,distance=..4] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=pinite_entity,limit=1,sort=nearest] run function thermodynamic:pinite/effect

# Viusals
execute unless score #pinite_vis therm.config matches 1.. run function thermodynamic:pinite/particles
# SFX
execute unless score #pinite_sfx therm.config matches 1.. run function thermodynamic:pinite/sounds


# remove fuse tag from as
tag @e[type=minecraft:armor_stand,tag=pinite_entity,limit=1,sort=nearest,distance=..0.2] remove fuse
# Kill AS
kill @e[type=minecraft:armor_stand,tag=pinite_entity,tag=!fuse]


