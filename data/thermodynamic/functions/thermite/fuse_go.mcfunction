


#schedule if 1 exists 
execute unless entity @e[tag=thermite_fused] as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,scores={thermite=1..},limit=1] run schedule function thermodynamic:thermite/fuse 1t
tag @s add thermite_fused

# warning particles and sounds
execute unless score #thermite_vis therm.config matches 1.. at @s run particle minecraft:lava ~ ~ ~ 2 2 2 1 250 force
execute unless score #thermite_vis therm.config matches 1.. at @s run particle block ancient_debris ~ ~ ~ 1 1 1 1 250 force
execute unless score #thermite_sfx therm.config matches 1.. at @s run playsound minecraft:entity.creeper.primed master @a[distance=..25]
execute unless score #thermite_sfx therm.config matches 1.. at @s run playsound minecraft:block.redstone_torch.burnout master @a[distance=..25]