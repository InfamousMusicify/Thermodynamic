


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..},limit=1] run schedule function thermodynamic:cryopop/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=cryopop_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:ice run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] cryopop 1
# warning particles and sounds
#execute unless score #cryopop_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 100 force
execute unless score #cryopop_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..,therm_track=20..}] run particle minecraft:dolphin ~ ~.55 ~ 1 1 1 0.1 1000 force

execute unless score #cryopop_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..,therm_track=20..}] run playsound minecraft:block.stone.break master @a[distance=..15]
#execute unless score #cryopop_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run playsound minecraft:block.glass.break master @a[distance=..25]

scoreboard players set @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..,therm_track=20..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=0}] run function thermodynamic:cryopop/cryopop