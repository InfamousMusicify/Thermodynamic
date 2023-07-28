# thermite/place_thermite_armorstand
#
#

summon armor_stand ~0.5 ~ ~0.5 {Tags:["thermite_entity"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=thermite_entity,limit=1,sort=nearest] therm_time 500
#OG# execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s

#execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~1 minecraft:magma_block unless block ~-1 ~ ~-1 minecraft:magma_block unless block ~-1 ~ ~1 minecraft:magma_block unless block ~1 ~ ~-1 minecraft:magma_block run kill @s

#stable corner included# execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block unless block ~1 ~ ~1 minecraft:magma_block unless block ~-1 ~ ~-1 minecraft:magma_block unless block ~-1 ~ ~1 minecraft:magma_block unless block ~1 ~ ~-1 minecraft:magma_block run kill @s

#OG# execute at @e[type=minecraft:armor_stand,tag=thermite_entity] run function thermodynamic:thermite/thermite

execute at @e[type=armor_stand,tag=thermite_entity] positioned ~ 0 ~ run kill @e[type=armor_stand,tag=thermite_entity,limit=1,sort=nearest,distance=..1]
execute at @e[type=armor_stand,tag=thermite_entity] positioned ~ -64 ~ run kill @e[type=armor_stand,tag=thermite_entity,limit=1,sort=nearest,distance=..1]


# 0 timer, unless sneakin
execute unless entity @s[scores={thermite=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:thermite/thermite
# instant upon crouch
execute unless score #thermite_sneak therm.config matches 1.. if entity @s[scores={therm_sneak=1..},tag=!therm_sneak_off] at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:thermite/thermite

# sneak off
execute if entity @s[scores={thermite=1..},tag=therm_sneak_off] run function thermodynamic:thermite/fuse_starting
# default
execute if entity @s[scores={therm_sneak=0},tag=!therm_sneak_off] run function thermodynamic:thermite/fuse_starting