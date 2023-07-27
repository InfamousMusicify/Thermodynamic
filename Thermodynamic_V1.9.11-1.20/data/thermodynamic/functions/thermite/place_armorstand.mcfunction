# thermite/place_thermite_armorstand
#
#

summon armor_stand ~0.5 ~ ~0.5 {Tags:["thermite_entity"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=thermite_entity,limit=1,sort=nearest] therm_time 500
#OG# execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
#execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~1 minecraft:magma_block unless block ~-1 ~ ~-1 minecraft:magma_block unless block ~-1 ~ ~1 minecraft:magma_block unless block ~1 ~ ~-1 minecraft:magma_block run kill @s

execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block unless block ~1 ~ ~1 minecraft:magma_block unless block ~-1 ~ ~-1 minecraft:magma_block unless block ~-1 ~ ~1 minecraft:magma_block unless block ~1 ~ ~-1 minecraft:magma_block run kill @s

#OG# execute at @e[type=minecraft:armor_stand,tag=thermite_entity] run function thermodynamic:thermite/thermite

# 0 timer, unless sneakin
execute unless entity @s[scores={thermite=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse] run function thermodynamic:thermite/thermite
# sneak boom
execute if entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse] run function thermodynamic:thermite/thermite

execute unless entity @s[scores={therm_sneak=1..}] run tag @s add fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:thermite/fuse_start
execute unless entity @s[scores={therm_sneak=1..}] run tag @s remove fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse] run function thermodynamic:thermite/fuse_go
