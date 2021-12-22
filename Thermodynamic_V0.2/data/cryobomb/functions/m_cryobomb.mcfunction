# cryobomb
# Magma Block Killer
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:magma_block
# stop lava filter
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Lava Cool
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:magma_block replace minecraft:lava
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:magma_block replace minecraft:lava
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:magma_block replace minecraft:lava
# conduit
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-6 ~-7 ~-6 ~6 ~5 ~6 minecraft:conduit[waterlogged=false] replace minecraft:conduit[waterlogged=true]
# Condense
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~ ~ ~-1 ~ ~ ~1 minecraft:air replace minecraft:water
# Water
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:air replace #minecraft:drycryolog[waterlogged=true]
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:air replace #minecraft:drycryolog[waterlogged=true]
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:air replace #minecraft:drycryolog[waterlogged=true]
# everything
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-2 ~-5 ~-2 ~2 ~4 ~2 minecraft:ice replace #minecraft:cryolog
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-3 ~-4 ~-3 ~3 ~3 ~3 minecraft:ice replace #minecraft:cryolog
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] as @s run fill ~-4 ~-3 ~-4 ~4 ~2 ~4 minecraft:ice replace #minecraft:cryolog
# effect
execute as @e[distance=..4] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=m_cryo_entity,distance=..4] run function cryobomb:meffect

# Viusals
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] run particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] run particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] run particle minecraft:poof ~ ~.55 ~ 2 2 2 1 125 force
# replace source of cryo, blue ice
execute as @e[type=minecraft:armor_stand,tag=m_cryo_entity] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:packed_ice run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:packed_ice
# SFX
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] run playsound minecraft:block.conduit.attack.target master @a[distance=..25] ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..25] ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=m_cryo_entity] run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~

# Kill AS
kill @e[type=minecraft:armor_stand,tag=m_cryo_entity]
#