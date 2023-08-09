# fuse


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..},limit=1] run schedule function thermodynamic:rosite/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=rosite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:coal_block run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..}] rosite 1
# warning particles and sounds
execute unless score #rosite_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..,therm_track=25..}] run particle minecraft:lava ~ ~ ~ 1 1 1 1 50 force
execute unless score #rosite_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..,therm_track=25..}] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..10]

scoreboard players set @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..,therm_track=25..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=0}] run function thermodynamic:rosite/rosite

