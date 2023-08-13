# fuse


#schedule if 1 exists 
##### execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..},limit=1] run schedule function thermodynamic:ozide/fuse 1t
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
##### execute at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] run function thermodynamic:ozide/azide


######################

#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..},limit=1] run schedule function thermodynamic:ozide/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
#execute as @e[type=armor_stand,tag=azide_entity] if entity @e[type=armor_stand,tag=azide_entity,sort=nearest,distance=..0.1] run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] azide 1
# warning particles and sounds
execute unless score #azide_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=40..}] run function thermodynamic:ozide/fuse_vis
execute unless score #azide_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=40..}] run function thermodynamic:ozide/fuse_sfx

scoreboard players set @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..,therm_track=40..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] run function thermodynamic:ozide/azide

#execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] at @s run function thermodynamic:ozide/azide
#execute as @p at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] run function thermodynamic:ozide/azide

#execute at @p run summon arrow