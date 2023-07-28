


#schedule if 1 exists 
execute as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..},limit=1] run schedule function thermodynamic:cryopop/fuse 1s
# kill if no netherite left
execute as @e[type=armor_stand,tag=cryopop_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:ice run kill @s
# score remover
execute as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run scoreboard players remove @s cryopop 1
# warning particles and sounds
#execute unless score #cryopop_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 100 force
execute unless score #cryopop_vis therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run particle minecraft:dolphin ~ ~.55 ~ 1 1 1 0.1 1000 force

execute unless score #cryopop_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run playsound minecraft:block.stone.break master @a[distance=..15]
#execute unless score #cryopop_sfx therm.config matches 1.. at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..}] run playsound minecraft:block.glass.break master @a[distance=..25]
# fire the bij
execute at @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=0}] run function thermodynamic:cryopop/cryopop