
execute unless entity @e[tag=cryocherry_fused] as @e[type=minecraft:armor_stand,tag=cryocherry_entity,tag=fuse,scores={cryocherry=1..},limit=1] run schedule function thermodynamic:cryocherry/fuse 1s
tag @s add cryocherry_fused
# warning particles and sounds
execute unless score #cryocherry_vis therm.config matches 1.. at @s run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 100 force
#execute unless score #cryocherry_vis therm.config matches 1.. at @s run 
execute unless score #cryocherry_sfx therm.config matches 1.. at @s run playsound minecraft:block.glass.break master @a[distance=..25]

