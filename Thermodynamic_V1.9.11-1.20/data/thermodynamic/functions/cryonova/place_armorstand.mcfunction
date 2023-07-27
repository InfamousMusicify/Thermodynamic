# cryonova_armorstand

summon armor_stand ~0.5 ~ ~0.5 {Tags:["cryonova_entity"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=cryonova_entity,limit=1,sort=nearest] therm_time 500
execute as @e[type=armor_stand,tag=cryonova_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:blue_ice unless block ~ ~ ~1 minecraft:blue_ice unless block ~-1 ~ ~ minecraft:blue_ice unless block ~ ~ ~-1 minecraft:blue_ice unless block ~ ~1 ~ minecraft:blue_ice unless block ~ ~-1 ~ minecraft:blue_ice run kill @s
#stable for corener checks# execute as @e[type=armor_stand,tag=cryonova_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:blue_ice unless block ~ ~ ~1 minecraft:blue_ice unless block ~-1 ~ ~ minecraft:blue_ice unless block ~ ~ ~-1 minecraft:blue_ice unless block ~ ~1 ~ minecraft:blue_ice unless block ~ ~-1 ~ minecraft:blue_ice unless block ~1 ~ ~1 minecraft:blue_ice unless block ~-1 ~ ~-1 minecraft:blue_ice unless block ~-1 ~ ~1 minecraft:blue_ice unless block ~1 ~ ~-1 minecraft:blue_ice run kill @s

#OG# execute at @e[type=minecraft:armor_stand,tag=cryonova_entity] run function thermodynamic:cryonova/cryonova
# 0 timer, unless sneakin
execute unless entity @s[scores={cryonova=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=!fuse] run function thermodynamic:cryonova/cryonova
# sneak boom
execute if entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=!fuse] run function thermodynamic:cryonova/cryonova

execute unless entity @s[scores={therm_sneak=1..}] run tag @s add fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryonova/fuse_start
execute unless entity @s[scores={therm_sneak=1..}] run tag @s remove fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse] run function thermodynamic:cryonova/fuse_go
#execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse] run function thermodynamic:cryonova/fuse





