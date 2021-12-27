# thermite/place_thermite_loop
#determine where to place the armor stand
execute if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand

execute unless entity @s[scores={thermite=90..}] positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^ ^1 ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand
execute unless entity @s[scores={thermite=90..}] positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:ancient_debris align xyz unless entity @e[dx=0,dy=0,dz=0,tag=therm_entity] run function thermite:place_thermite/place_thermite_armorstand

scoreboard players add @s thermite 1

execute unless entity @s[scores={thermite=90..}] positioned ^ ^ ^-0.1 run function thermite:place_thermite/place_thermite_loop
