# fuse


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..},limit=1] run schedule function thermodynamic:pinite/fuse 1t
# kill if no netherite left
execute as @e[type=armor_stand,tag=pinite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:nether_quartz_ore run kill @s
execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:magma_block unless block ~ ~ ~1 minecraft:magma_block unless block ~-1 ~ ~ minecraft:magma_block unless block ~ ~ ~-1 minecraft:magma_block unless block ~ ~1 ~ minecraft:magma_block unless block ~ ~-1 ~ minecraft:magma_block run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..}] pinite 1
# warning particles and sounds
execute unless score #pinite_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..,therm_track=20..}] run particle minecraft:lava ~ ~ ~ 1 1 1 1 50 force
execute unless score #pinite_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..,therm_track=20..}] run playsound minecraft:block.stone.break master @a[distance=..5]

scoreboard players set @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..,therm_track=20..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=0}] run function thermodynamic:pinite/pinite

