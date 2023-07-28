

# change these

# Effect Players closeby
effect give @s[distance=..1.35] slowness 15 1 true
effect give @s[distance=..1.35] minecraft:mining_fatigue 10 1 true
effect give @s[distance=..1.45] minecraft:weakness 20 1 true
effect give @s[distance=..1.5] minecraft:blindness 3 0 true
# Damage - mid range
effect give @s[distance=..1.75] instant_damage 1 0 true
# Far effect player
effect give @s[distance=..2.25] slowness 5 0 true
effect give @s[distance=..2.25] minecraft:mining_fatigue 5 0 true
effect give @s[distance=..2.35] minecraft:weakness 10 0 true
# execute at @s[type=minecraft:armor_stand,tag=cryo_entity] unless entity @p[distance=..6,nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate"}}] run 