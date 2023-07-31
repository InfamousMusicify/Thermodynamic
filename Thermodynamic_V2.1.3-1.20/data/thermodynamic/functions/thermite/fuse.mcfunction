# fuse


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..},limit=1] run schedule function thermodynamic:thermite/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:ancient_debris run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..}] thermite 1
# warning particles and sounds
execute unless score #thermite_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..,therm_track=20..}] run particle minecraft:lava ~ ~.55 ~ 1 1 1 1 50 force
execute unless score #thermite_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..,therm_track=20..}] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..25]

scoreboard players set @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..,therm_track=20..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=0}] run function thermodynamic:thermite/thermite

