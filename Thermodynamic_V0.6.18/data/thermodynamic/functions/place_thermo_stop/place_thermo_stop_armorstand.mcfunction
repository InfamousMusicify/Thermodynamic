# thermite/place_thermite_armorstand
summon armor_stand ~0.5 ~ ~0.5 {Tags:["thermo_stop_entity"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s thermo_stop 90

scoreboard players set @e[type=minecraft:armor_stand,tag=thermo_stop_entity,limit=1,sort=nearest] bomb_time 500
execute as @e[type=armor_stand,tag=thermo_stop_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
execute as @s run function thermodynamic:thermo_stop
