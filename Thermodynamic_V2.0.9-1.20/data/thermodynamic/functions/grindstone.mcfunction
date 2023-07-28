# raijin:grindstone
#
#
data merge entity @s {Item:{tag:{display:{Lore:['{}']},Tags:[]}}}
playsound minecraft:block.grindstone.use block @a[distance=..15]
particle minecraft:soul_fire_flame ~ ~.25 ~ .1 .1 .1 .05 25 force
particle minecraft:flame ~ ~.25 ~ .1 .1 .1 .05 25 force
loot give @s loot thermodynamic:thermodynamic_loot
#say grinded