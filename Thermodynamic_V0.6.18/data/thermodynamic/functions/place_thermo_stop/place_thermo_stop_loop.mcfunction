# thermite/place_thermo_stop_loop
#determine where to place the armor stand
execute if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand

execute unless entity @s[scores={thermo_stop=90..}] positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^ ^1 ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand
execute unless entity @s[scores={thermo_stop=90..}] positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:magma_block align xyz unless entity @e[dx=0,dy=0,dz=0,tag=thermo_stop_entity] run function thermodynamic:place_thermo_stop/place_thermo_stop_armorstand

scoreboard players add @s thermo_stop 1

execute unless entity @s[scores={thermo_stop=90..}] positioned ^ ^ ^-0.1 run function thermodynamic:place_thermo_stop/place_thermo_stop_loop
