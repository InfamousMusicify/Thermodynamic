# fuse


#schedule if 1 exists 
##### execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..},limit=1] run schedule function thermodynamic:azide/fuse 1t
# kill if no netherite left
##### execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# score remover
##### execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run scoreboard players remove @s azide 1
# warning particles and sounds
##### execute unless score #azide_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run particle minecraft:lava ~ ~.55 ~ 1 1 1 1 250 force
##### execute unless score #azide_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run particle minecraft:flame ~ ~.55 ~ 0 0 0 0.2 300 force
##### execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..50]
##### execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run playsound minecraft:entity.creeper.primed master @a[distance=..50]
##### execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run playsound minecraft:block.stone.break master @a[distance=..50]

# fire the bij
##### execute at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] run function thermodynamic:azide/aziroazide_azide


######################

#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..},limit=1] run schedule function thermodynamic:azide/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s

execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run scoreboard players add @s therm_track 1
# score remover
execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run scoreboard players remove @s azide 1
# warning particles and sounds
execute unless score #azide_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=20..}] run particle minecraft:lava ~ ~.55 ~ 1 1 1 1 250 force
execute unless score #azide_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=20..}] run particle minecraft:flame ~ ~.55 ~ 0 0 0 0.2 300 force
execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=20..}] run playsound minecraft:block.redstone_torch.burnout master @a[distance=..50]
execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=20..}] run playsound minecraft:entity.creeper.primed master @a[distance=..50]
execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=20..}] run playsound minecraft:block.stone.break master @a[distance=..50]

execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=20..}] run scoreboard players set @s therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] run function thermodynamic:azide/aziroazide_azide

#execute at @p run summon arrow