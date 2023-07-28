tag @s add fuse
execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryonova/fuse_start
tag @s remove fuse
execute as @e[type=minecraft:armor_stand,tag=cryonova_entity,tag=fuse,limit=1,sort=nearest] run function thermodynamic:cryonova/fuse_go