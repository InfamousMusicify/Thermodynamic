tag @s add fuse
execute as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:cryopop/fuse_start
tag @s remove fuse
execute as @e[type=minecraft:armor_stand,tag=cryopop_entity,tag=fuse,limit=1,sort=nearest] run function thermodynamic:cryopop/fuse_go