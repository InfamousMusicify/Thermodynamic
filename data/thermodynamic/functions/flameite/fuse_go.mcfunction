


#schedule if 1 exists 
execute unless entity @e[tag=flameite_fused] as @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..},limit=1] run schedule function thermodynamic:flameite/fuse 1t
tag @s add flameite_fused
# kill if no netherite left
#execute as @e[type=armor_stand,tag=flameite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# score remover
#execute as @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=1..}] run scoreboard players remove @s flameite 1
# warning particles and sounds
execute unless score #flameite_vis therm.config matches 1.. at @s run particle minecraft:lava ~ ~ ~ 1 1 1 1 150 force
execute unless score #flameite_vis therm.config matches 1.. at @s run particle block quartz_block ~ ~ ~ 1 1 1 1 250 force
execute unless score #flameite_sfx therm.config matches 1.. at @s run playsound minecraft:entity.creeper.primed master @a[distance=..15]
execute unless score #flameite_sfx therm.config matches 1.. at @s run playsound minecraft:block.stone.break master @a[distance=..15]
# fire the bij
#execute at @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,scores={flameite=0}] run function thermodynamic:flameite/aziroflameite_flameite