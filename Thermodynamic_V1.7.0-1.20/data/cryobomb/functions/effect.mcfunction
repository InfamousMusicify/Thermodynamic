# Cryo-Bomb:effect
# Effect Players closeby
effect give @s[distance=..2] minecraft:blindness 25 1 true
effect give @s[distance=..2] slowness 65 2 true
effect give @s[distance=..2] minecraft:mining_fatigue 65 1 true
effect give @s[distance=..2] minecraft:weakness 65 1 true
# Damage
effect give @s[distance=..2.35] instant_damage 1 1 true
# Far effect player
effect give @s[distance=..3.35] slowness 25 1 true
effect give @s[distance=..3.35] minecraft:mining_fatigue 25 1 true
effect give @s[distance=..3.35] minecraft:weakness 25 1 true
# execute at @s[type=minecraft:armor_stand,tag=cryo_entity] unless entity @p[distance=..6,nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate"}}] run 