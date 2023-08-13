# Main with fuse
tag @s add fuse
execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:ozide/fuse_start
tag @s remove fuse

execute as @e[type=minecraft:armor_stand,tag=azide_entity,tag=fuse,limit=1,sort=nearest] run function thermodynamic:ozide/fuse_go