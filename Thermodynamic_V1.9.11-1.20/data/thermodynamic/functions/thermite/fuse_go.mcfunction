


#schedule if 1 exists 
execute unless entity @e[tag=thermite_fused] as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..},limit=1] run schedule function thermodynamic:thermite/fuse 1s
tag @s add thermite_fused
# kill if no netherite left
#execute as @e[type=armor_stand,tag=thermite_entity] at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:netherite_block run kill @s
# score remover
#execute as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..}] run scoreboard players remove @s thermite 1
# warning particles and sounds
execute unless score #thermite_vis therm.config matches 1.. unless entity @s[tag=thermite_vis_off] at @s run particle minecraft:lava ~ ~.55 ~ 1 1 1 1 50 force
execute unless score #thermite_sfx therm.config matches 1.. unless entity @s[tag=thermite_sfx_off] at @s run playsound minecraft:block.redstone_torch.burnout master @a[distance=..50]
# fire the bij
#execute at @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=0}] run function thermodynamic:thermite/azirothermite_thermite