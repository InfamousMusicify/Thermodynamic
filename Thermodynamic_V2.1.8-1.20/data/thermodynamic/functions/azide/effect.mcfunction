# thermite:effect

# Damage - close range
effect give @s[distance=..1] instant_damage 1 7 true
effect give @s[distance=..2] instant_damage 1 6 true
effect give @s[distance=..3] instant_damage 1 5 true
effect give @s[distance=..4] instant_damage 1 4 true
effect give @s[distance=..5] instant_damage 1 3 true
# Damage - mid range
effect give @s[distance=4..9] instant_damage 1 2 true
# Effect Players closeby
effect give @s[distance=..9] minecraft:blindness 5 1 true
effect give @s[distance=..10] slowness 90 1 true
effect give @s[distance=..10] minecraft:mining_fatigue 100 1 true
effect give @s[distance=..10] minecraft:weakness 200 1 true
effect give @s[distance=..10] minecraft:nausea 90 1 true

# Damage - far
effect give @s[distance=4..14] instant_damage 1 1 true
# far
effect give @s[distance=..15] slowness 25 0 true
effect give @s[distance=..15] minecraft:mining_fatigue 15 0 true
effect give @s[distance=..15] minecraft:weakness 25 0 true
effect give @s[distance=..15] minecraft:nausea 15 0 true

# Damage - farfar
effect give @s[distance=4..20] instant_damage 1 0 true

