


#schedule if 1 exists 
execute unless entity @e[tag=rosite_fused] as @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..},limit=1] run schedule function thermodynamic:rosite/fuse 1t
tag @s add rosite_fused
# kill if no netherite left
#execute as @e[type=armor_stand,tag=rosite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# score remover
#execute as @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=1..}] run scoreboard players remove @s rosite 1
# warning particles and sounds
execute unless score #rosite_vis therm.config matches 1.. at @s run particle minecraft:lava ~ ~ ~ 1 1 1 1 50 force
execute unless score #rosite_sfx therm.config matches 1.. at @s run playsound minecraft:entity.creeper.primed master @a[distance=..10]

# fire the bij
#execute at @e[type=minecraft:armor_stand,tag=rosite_entity,tag=fuse,scores={rosite=0}] run function thermodynamic:rosite/azirorosite_rosite