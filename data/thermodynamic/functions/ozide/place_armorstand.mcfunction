# thermite/place_thermite_armorstand
#
#


# hard timer cap -so that i can kill left over armorstands.
#execute if score #azide_fuse therm.config < #kill_as therm.config run scoreboard players operation #azide_fuse therm.config = #kill_as therm.config
execute if score #azide_fuse therm.config matches 61.. run scoreboard players set #azide_fuse therm.config 60
execute if score #azide_fuse therm.config matches ..-1 run scoreboard players set #azide_fuse therm.config 0

summon armor_stand ~0.5 ~ ~0.5 {Tags:["azide_entity","thermodynamic"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=azide_entity,limit=1,sort=nearest] therm_time 500
#OG# execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
#stable for corener checks# execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block unless block ~1 ~ ~1 minecraft:magma_block unless block ~-1 ~ ~-1 minecraft:magma_block unless block ~-1 ~ ~1 minecraft:magma_block unless block ~1 ~ ~-1 minecraft:magma_block run kill @s

# kill near void - i have no idea how to detect void... most commands null out with store result.
#execute as @e[type=armor_stand,tag=azide_entity] run kill @s
#works# execute at @e[type=armor_stand,tag=azide_entity] positioned ~ -64 ~ run kill @e[type=armor_stand,tag=azide_entity,limit=1,sort=nearest,distance=..1]
#execute at @e[type=armor_stand,tag=azide_entity] positioned ~ -63 ~ run kill @e[type=armor_stand,tag=azide_entity,limit=1,sort=nearest,sort=nearest]

#execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ if block ~ ~-1 ~ minecraft:void_air run kill @s
#execute as @e[type=armor_stand,tag=azide_entity,y=-64] run kill @s

#execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ if block ~ ~-1 ~ minecraft:void_air run scoreboard players add @s therm.config 1

#execute as @e[type=armor_stand,tag=azide_entity] store success score @s therm.config run data get block ~ ~-1 ~
#execute as @e[type=armor_stand,tag=azide_entity,scores={therm.config=1..}] run kill @s


#IDEA# execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ X store result X unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
# working void detection
execute as @e[type=armor_stand,tag=azide_entity,limit=1,sort=nearest] at @s positioned ~ ~ ~ store result score @s therm_void unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s
execute as @e[type=armor_stand,tag=azide_entity,limit=1,sort=nearest] if score @s therm_void matches 0 run kill @s
##### execute at @e[type=armor_stand,tag=azide_entity] positioned ~ 0 ~ run kill @e[type=armor_stand,tag=azide_entity,limit=1,sort=nearest,distance=..1]
##### execute at @e[type=armor_stand,tag=azide_entity] positioned ~ -64 ~ run kill @e[type=armor_stand,tag=azide_entity,limit=1,sort=nearest,distance=..1]

#OG# execute at @e[type=minecraft:armor_stand,tag=azide_entity] run function thermodynamic:ozide


# 0 timer, unless sneakin
execute unless entity @s[scores={azide=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=azide_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:ozide/azide
# instant upon crouch
execute unless score #azide_sneak therm.config matches 1.. if entity @s[scores={therm_sneak=1..},tag=!therm_sneak_off] at @e[type=minecraft:armor_stand,tag=azide_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:ozide/azide

# sneak off
execute if entity @s[scores={azide=1..},tag=therm_sneak_off] run function thermodynamic:ozide/fuse_starting
# default
execute if entity @s[scores={therm_sneak=0},tag=!therm_sneak_off] run function thermodynamic:ozide/fuse_starting
