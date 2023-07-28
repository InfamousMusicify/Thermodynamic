

#execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..}] run tag @s add fused
#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..},limit=1] run schedule function thermodynamic:cryonova/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=cryonova_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s

execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..}] run scoreboard players add @s therm_track 1
# score remover
execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..}] run scoreboard players remove @s cryonova 1
# warning particles and sounds
execute unless score #cryonova_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=20..}] run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 500 force
execute unless score #cryonova_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=20..}] run particle minecraft:dolphin ~ ~.55 ~ 1.5 1.5 1.5 0.1 5000 force
execute unless score #cryonova_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=20..}] run playsound minecraft:block.glass.break master @a[distance=..50]

execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=1..,therm_track=20..}] run scoreboard players set @s therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,scores={cryonova=0}] run function thermodynamic:cryonova/cryonova