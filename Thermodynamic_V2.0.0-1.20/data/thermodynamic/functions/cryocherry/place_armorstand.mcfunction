


summon armor_stand ~0.5 ~ ~0.5 {Tags:["cryocherry_entity"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=cryocherry_entity,limit=1,sort=nearest] therm_time 500
execute as @e[type=armor_stand,tag=cryocherry_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s

#execute at @e[type=minecraft:armor_stand,tag=cryocherry_entity] run function cryocherry:m_cryocherry

# 0 timer, unless sneakin
execute unless entity @s[scores={cryocherry=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse] run function thermodynamic:cryocherry/cryocherry
# sneak boom
execute if entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse] run function thermodynamic:cryocherry/cryocherry

execute unless entity @s[scores={therm_sneak=1..}] run tag @s add fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryocherry/fuse_start
execute unless entity @s[scores={therm_sneak=1..}] run tag @s remove fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse] run function thermodynamic:cryocherry/fuse_go

#