# place_cryopop/place_cryopop_armorstand
#
#

summon armor_stand ~0.5 ~ ~0.5 {Tags:["cryopop_entity"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=cryopop_entity,limit=1,sort=nearest] therm_time 500
execute as @e[type=armor_stand,tag=cryopop_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s

#OG# execute at @e[type=minecraft:armor_stand,tag=cryopop_entity] run function thermodynamic:cryopop


# 0 timer, unless sneakin
execute unless entity @s[scores={cryopop=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse] run function thermodynamic:cryopop/cryopop
# sneak boom
execute if entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse] run function thermodynamic:cryopop/cryopop

execute unless entity @s[scores={therm_sneak=1..}] run tag @s add fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryopop/fuse_start
execute unless entity @s[scores={therm_sneak=1..}] run tag @s remove fuse
execute unless entity @s[scores={therm_sneak=1..}] as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse] run function thermodynamic:cryopop/fuse_go



#