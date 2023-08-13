


#schedule if 1 exists 
#OG# execute unless entity @e[tag=azide_fused] as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..},limit=1] run schedule function thermodynamic:ozide/fuse 1s





# schedule per player - executing as @s as armorstand
execute unless entity @e[tag=azide_fused] as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..},limit=1] run schedule function thermodynamic:ozide/fuse 1t
tag @s add azide_fused
# kill if no netherite left
#execute as @e[type=armor_stand,tag=azide_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# score remover
#execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=1..}] run scoreboard players remove @s azide 1
# warning particles and sounds

execute unless score #azide_vis therm.config matches 1.. at @s run particle minecraft:lava ~ ~ ~ 1 1 1 1 250 force
execute unless score #azide_vis therm.config matches 1.. at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.2 300 force
execute unless score #azide_sfx therm.config matches 1.. at @s run playsound minecraft:block.redstone_torch.burnout master @a[distance=..50]
execute unless score #azide_sfx therm.config matches 1.. at @s run playsound minecraft:entity.creeper.primed master @a[distance=..50]
# fire the bij
#execute at @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,scores={azide=0}] run function thermodynamic:ozide/aziroazide_azide