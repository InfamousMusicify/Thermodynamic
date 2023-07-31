




# hard timer cap -so that i can kill left over armorstands.
#execute if score #cryocherry_fuse therm.config < #kill_as therm.config run scoreboard players operation #cryocherry_fuse therm.config = #kill_as therm.config
execute if score #cryocherry_fuse therm.config matches 301.. run scoreboard players set #cryocherry_fuse therm.config 300
execute if score #cryocherry_fuse therm.config matches ..-1 run scoreboard players set #cryocherry_fuse therm.config 0

summon armor_stand ~0.5 ~ ~0.5 {Tags:["cryocherry_entity","thermodynamic"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Invisible:1,Marker:1,Small:1}

scoreboard players set @s therm_track 90

scoreboard players set @e[type=minecraft:armor_stand,tag=cryocherry_entity,limit=1,sort=nearest] therm_time 500
execute as @e[type=armor_stand,tag=cryocherry_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s

execute at @e[type=armor_stand,tag=cryocherry_entity] positioned ~ 0 ~ run kill @e[type=armor_stand,tag=cryocherry_entity,limit=1,sort=nearest,distance=..1]
execute at @e[type=armor_stand,tag=cryocherry_entity] positioned ~ -64 ~ run kill @e[type=armor_stand,tag=cryocherry_entity,limit=1,sort=nearest,distance=..1]

#OG# execute at @e[type=minecraft:armor_stand,tag=cryocherry_entity] run function thermodynamic:cryocherry


# 0 timer, unless sneakin
execute unless entity @s[scores={cryocherry=1..}] unless entity @s[scores={therm_sneak=1..}] at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryocherry/cryocherry
# instant upon crouch
execute unless score #cryocherry_sneak therm.config matches 1.. if entity @s[scores={therm_sneak=1..},tag=!therm_sneak_off] at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryocherry/cryocherry

# sneak off
execute if entity @s[scores={cryocherry=1..},tag=therm_sneak_off] run function thermodynamic:cryocherry/fuse_starting
# default
execute if entity @s[scores={therm_sneak=0},tag=!therm_sneak_off] run function thermodynamic:cryocherry/fuse_starting
#