


#schedule if 1 exists 
execute unless entity @e[tag=pinite_fused] as @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..},limit=1] run schedule function thermodynamic:pinite/fuse 1t
tag @s add pinite_fused
# kill if no netherite left
#execute as @e[type=armor_stand,tag=pinite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# score remover
#execute as @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=1..}] run scoreboard players remove @s pinite 1
# warning particles and sounds
execute unless score #pinite_vis therm.config matches 1.. at @s run particle minecraft:lava ~ ~ ~ 1 1 1 1 50 force
execute unless score #pinite_sfx therm.config matches 1.. at @s run playsound minecraft:block.redstone_torch.burnout master @a[distance=..5]
# fire the bij
#execute at @e[type=minecraft:armor_stand,tag=pinite_entity,tag=fuse,scores={pinite=0}] run function thermodynamic:pinite/aziropinite_pinite