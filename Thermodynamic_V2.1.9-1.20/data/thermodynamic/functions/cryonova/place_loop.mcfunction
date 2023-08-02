
#
#

#determine where to place the armor stand
execute if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand

execute unless entity @s[scores={therm_track=90..}] positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^ ^1 ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand
execute unless entity @s[scores={therm_track=90..}] positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:netherite_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=cryonova_entity] run function thermodynamic:cryonova/place_armorstand

scoreboard players add @s therm_track 1

execute unless entity @s[scores={therm_track=90..}] positioned ^ ^ ^-0.1 run function thermodynamic:cryonova/place_loop
#