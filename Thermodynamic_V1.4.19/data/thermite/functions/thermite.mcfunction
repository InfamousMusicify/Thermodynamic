# thermite
# Magma Block Killer
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~ ~1 ~ ~ ~-1 ~ minecraft:basalt replace minecraft:magma_block
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~1 ~ ~ ~-1 ~ ~ minecraft:basalt replace minecraft:magma_block
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~ ~ ~1 ~ ~ ~-1 minecraft:basalt replace minecraft:magma_block
# Lava Cool
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:basalt replace minecraft:obsidian
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:magma_block replace minecraft:obsidian
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:magma_block replace minecraft:obsidian
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:magma_block replace minecraft:obsidian
# conduit
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-6 ~-7 ~-6 ~6 ~5 ~6 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:drythermlog[waterlogged=true]
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:drythermlog[waterlogged=true]
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:drythermlog[waterlogged=true]
# Everything
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:thermlog
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:thermlog
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:thermlog
# Ice
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air replace minecraft:ice
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:ice
execute at @e[type=minecraft:armor_stand,tag=therm_entity] as @s run fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air replace minecraft:ice
# effect  (Chains+, Netherite Chestplate, Thermodynamic armor, and Netherite Armored Elytras will all make you immune to the blasts.)
execute as @e[distance=..4,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag: {armElyData: {chestplate: {id: "minecraft:netherite_chestplate"}}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=therm_entity,distance=..4] run function thermite:effect

# Viusals
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:lava ~ ~.55 ~ 4 4 4 1 250 force
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run particle minecraft:poof ~ ~.55 ~ 2 2 2 1 750 force
# Remove Ancient Debris
execute as @e[type=minecraft:armor_stand,tag=therm_entity] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:ancient_debris run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ancient_debris
# SFX
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run playsound minecraft:entity.ender_dragon.flap master @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=therm_entity] run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..25]
# Kill AS
kill @e[type=minecraft:armor_stand,tag=therm_entity]
