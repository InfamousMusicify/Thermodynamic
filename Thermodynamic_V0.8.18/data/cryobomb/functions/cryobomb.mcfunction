# cryobomb
# Magma Block Killer
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:magma_block
# stop lava filter
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Lava Cool
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:basalt replace minecraft:lava
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:basalt replace minecraft:lava
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:basalt replace minecraft:lava
# Condense
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
# conduit
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-6 ~-7 ~-6 ~6 ~5 ~6 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Water - Replace "none redstone" componenets that are water logged
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:air replace #minecraft:drycryolog[waterlogged=true]
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:air replace #minecraft:drycryolog[waterlogged=true]
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:air replace #minecraft:drycryolog[waterlogged=true]
# replace everthing
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:ice replace #minecraft:cryolog
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:ice replace #minecraft:cryolog
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:ice replace #minecraft:cryolog
# effect
execute as @e[distance=..4] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=cryo_entity,distance=..4] run function cryobomb:effect

# Viusals
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:poof ~ ~.55 ~ 2 2 2 1 250 force

# replace source of cryo, blue ice
execute as @e[type=minecraft:armor_stand,tag=cryo_entity] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:blue_ice run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:blue_ice
# SFX
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run playsound minecraft:entity.ender_dragon.shoot master @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..25]
# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryo_entity]
#