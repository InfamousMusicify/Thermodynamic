


execute unless entity @e[tag=cryopop_fused] as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,scores={cryopop=1..},limit=1] run schedule function thermodynamic:cryopop/fuse 1s
tag @s add cryopop_fused
# warning particles and sounds
#execute unless score #cryopop_vis therm.config matches 1.. at @s run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 100 force
execute unless score #cryopop_vis therm.config matches 1.. at @s run particle minecraft:dolphin ~ ~.55 ~ 1 1 1 0.1 1000 force
execute unless score #cryopop_sfx therm.config matches 1.. at @s run playsound minecraft:block.glass.break master @a[distance=..15]
#execute unless score #cryopop_sfx therm.config matches 1.. at @s run playsound minecraft:block.stone.break master @a[distance=..25]
