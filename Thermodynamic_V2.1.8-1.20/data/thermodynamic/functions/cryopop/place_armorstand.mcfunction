# place_cryopop/place_cryopop_armorstand
#
#


# hard timer cap -so that i can kill left over armorstands.
#execute if score #cryopop_fuse therm.config < #kill_as therm.config run scoreboard players operation #cryopop_fuse therm.config = #kill_as therm.config
execute if score #cryopop_fuse therm.config matches 61.. run scoreboard players set #cryopop_fuse therm.config 60
execute if score #cryopop_fuse therm.config matches ..-1 run scoreboard players set #cryopop_fuse therm.config 0


summon armor_stand ~0.5 ~ ~0.5 {Tags:["cryopop_entity","thermodynamic"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=cryopop_entity,limit=1,sort=nearest] therm_time 500
#OG# execute as @e[type=armor_stand,tag=cryopop_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s

execute as @e[type=armor_stand,tag=cryopop_entity,limit=1,sort=nearest] at @s positioned ~ ~ ~ store result score @s therm_void unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
execute as @e[type=armor_stand,tag=cryopop_entity,limit=1,sort=nearest] if score @s therm_void matches 0 run kill @s

# execute at @e[type=armor_stand,tag=cryopop_entity] positioned ~ 0 ~ run kill @e[type=armor_stand,tag=cryopop_entity,limit=1,sort=nearest,distance=..1]
# execute at @e[type=armor_stand,tag=cryopop_entity] positioned ~ -64 ~ run kill @e[type=armor_stand,tag=cryopop_entity,limit=1,sort=nearest,distance=..1]

#OG# execute at @e[type=minecraft:armor_stand,tag=cryopop_entity] run function thermodynamic:cryopop


# 0 timer, unless sneakin
execute unless entity @s[scores={cryopop=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryopop/cryopop
# instant upon crouch
execute unless score #cryopop_sneak therm.config matches 1.. if entity @s[scores={therm_sneak=1..},tag=!therm_sneak_off] at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryopop/cryopop

# sneak off
execute if entity @s[scores={cryopop=1..},tag=therm_sneak_off] run function thermodynamic:cryopop/fuse_starting
# default
execute if entity @s[scores={therm_sneak=0},tag=!therm_sneak_off] run function thermodynamic:cryopop/fuse_starting