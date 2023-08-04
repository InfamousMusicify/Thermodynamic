


tag @s add fuse
execute as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:thermite/fuse_start
execute run tag @s remove fuse
execute as @e[type=minecraft:armor_stand,tag=thermite_entity,tag=fuse,limit=1,sort=nearest] run function thermodynamic:thermite/fuse_go