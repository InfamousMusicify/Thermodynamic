# thermodynamic:thermo_stop


# Effect Players
# execute as @e[distance=..4] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{display:{Lore:['{"text":"Chains+","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{display:{Lore:['{"text":"Thermodynamic","color":"gray","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{Slot:102b, id: "minecraft:netherite_chestplate"}]}] at @e[type=minecraft:armor_stand,tag=thermo_stop_entity,distance=..4] run function thermite:effect

# Viusals
# execute at @e[type=minecraft:armor_stand,tag=thermo_stop_entity] run particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
# execute at @e[type=minecraft:armor_stand,tag=thermo_stop_entity] run particle minecraft:flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=thermo_stop_entity] run particle minecraft:lava ~ ~.55 ~ 4 4 4 1 250 force
execute at @e[type=minecraft:armor_stand,tag=thermo_stop_entity] run particle minecraft:poof ~ ~.55 ~ 2 2 2 1 750 force
# Remove Ancient Debris
# execute as @e[type=minecraft:armor_stand,tag=thermo_stop_entity] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:ancient_debris run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:ancient_debris
# SFX
execute at @e[type=minecraft:armor_stand,tag=thermo_stop_entity] run playsound minecraft:entity.ender_dragon.flap master @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=thermo_stop_entity] run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..25]
# Kill AS
kill @e[type=minecraft:armor_stand,tag=thermo_stop_entity]
