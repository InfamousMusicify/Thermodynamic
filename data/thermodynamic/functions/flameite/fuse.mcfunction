# fuse


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..},limit=1] run schedule function thermodynamic:flameite/fuse 1t
# kill if no source left
execute as @e[type=armor_stand,tag=flameite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:quartz_block run kill @s
execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~1 ~ ~ minecraft:coal_block unless block ~ ~ ~1 minecraft:coal_block unless block ~-1 ~ ~ minecraft:coal_block unless block ~ ~ ~-1 minecraft:coal_block unless block ~ ~1 ~ minecraft:coal_block unless block ~ ~-1 ~ minecraft:coal_block run kill @s

scoreboard players add @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..}] therm_track 1
# score remover
scoreboard players remove @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..}] flameite 1
# warning particles and sounds
execute unless score #flameite_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..,therm_track=25..}] run function thermodynamic:flameite/fuse_vis
execute unless score #flameite_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..,therm_track=25..}] run function thermodynamic:flameite/fuse_sfx

scoreboard players set @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..,therm_track=25..}] therm_track 0
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=0}] run function thermodynamic:flameite/flameite

