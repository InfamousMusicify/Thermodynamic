

#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..},limit=1] run schedule function thermodynamic:cryocherry/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=cryocherry_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:packed_ice run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..}] cryocherry 1
# warning particles and sounds
execute unless score #cryocherry_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..,therm_track=20..}] run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 100 force
#execute unless score #cryocherry_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..}] run particle minecraft:dolphin ~ ~.55 ~ 1.5 1.5 1.5 0.1 5000 force
execute unless score #cryocherry_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..,therm_track=20..}] run playsound minecraft:block.glass.break master @a[distance=..25]

scoreboard players set @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..,therm_track=20..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=0}] run function thermodynamic:cryocherry/cryocherry

