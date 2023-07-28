


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..},limit=1] run schedule function thermodynamic:cryobomb/fuse 1s
# kill if no netherite left
execute as @e[type=armor_stand,tag=cryobomb_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:blue_ice run kill @s
# score remover
execute as @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..}] run scoreboard players remove @s cryobomb 1
# warning particles and sounds
execute unless score #cryobomb_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..}] run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 500 force
#execute unless score #cryobomb_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..}] run particle minecraft:dolphin ~ ~.55 ~ 1.5 1.5 1.5 0.1 5000 force
execute unless score #cryobomb_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..}] run playsound minecraft:block.glass.break master @a[distance=..25]
execute unless score #cryobomb_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..}] run playsound minecraft:block.stone.break master @a[distance=..25]
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=0}] run function thermodynamic:cryobomb/cryobomb