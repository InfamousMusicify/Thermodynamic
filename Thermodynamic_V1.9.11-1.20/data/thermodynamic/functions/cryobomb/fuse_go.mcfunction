


execute unless entity @e[tag=cryobomb_fused] as @e[type=minecraft:armor_stand,tag=cryobomb_entity,tag=fuse,scores={cryobomb=1..},limit=1] run schedule function thermodynamic:cryobomb/fuse 1s
tag @s add cryobomb_fused
# warning particles and sounds
execute unless score #cryobomb_vis therm.config matches 1.. unless entity @s[tag=cryobomb_vis_off] at @s run particle minecraft:soul_fire_flame ~ ~.55 ~ 0 0 0 0.1 500 force
#execute unless score #cryobomb_vis therm.config matches 1.. unless entity @s[tag=cryobomb_vis_off] at @s run 
execute unless score #cryobomb_sfx therm.config matches 1.. unless entity @s[tag=cryobomb_sfx_off] at @s run playsound minecraft:block.glass.break master @a[distance=..25]
