

#execute as @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..}] run tag @s add fused
#schedule if 1 exists 
execute as @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..},limit=1] run schedule function thermodynamic:cryonova/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=cryonova_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# kill if no blue_ice around
execute as @e[type=armor_stand,tag=cryonova_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:blue_ice unless block ~ ~ ~1 minecraft:blue_ice unless block ~-1 ~ ~ minecraft:blue_ice unless block ~ ~ ~-1 minecraft:blue_ice unless block ~ ~1 ~ minecraft:blue_ice unless block ~ ~-1 ~ minecraft:blue_ice run kill @s



# effect timer score adder
scoreboard players add @e[type=armor_stand,tag=cryonova_entity,scores={cryonova=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..}] cryonova 1
# warning particles and sounds

execute unless score #cryonova_vis therm.config matches 1.. at @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=40..}] run function thermodynamic:cryonova/fuse_vis
execute unless score #cryonova_sfx therm.config matches 1.. at @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=40..}] run playsound minecraft:block.glass.break master @a[distance=..50]

# 1 second effect timer reset
scoreboard players set @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=40..}] therm_track 0
# fire the bij
execute at @e[type=armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=0}] run function thermodynamic:cryonova/cryonova


